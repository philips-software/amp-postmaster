// Start Traefik with: docker run -it --rm -p 80:80 -p 8080:8080 traefik:v2.10 --api.insecure=true --providers.http.endpoint=http://host.docker.internal:9000/api --log.level=DEBUG

#include "hal/generic/TimerServiceGeneric.hpp"
#include "infra/stream/StdStringOutputStream.hpp"
#include "infra/syntax/JsonFormatter.hpp"
#include "postmaster/instantiations/MdnsDiscovery.hpp"
#include "services/network/Http.hpp"
#include "services/network/HttpErrors.hpp"
#include "services/network/HttpServer.hpp"
#include "services/network_instantiations/NetworkAdapter.hpp"
#include "services/tracer/GlobalTracer.hpp"

class HttpPageReverseProxyConfiguration
    : public services::SimpleHttpPage
    , protected services::HttpResponse
{
public:
    HttpPageReverseProxyConfiguration(infra::BoundedConstString path, application::PostmasterDiscovery& discovery);

    // Implementation of SimpleHttpPage
    bool ServesRequest(const infra::Tokenizer& pathTokens) const override;
    void RespondToRequest(services::HttpRequestParser& parser, services::HttpServerConnection& connection) override;

protected:
    // Implementation of HttpResponse
    infra::BoundedConstString Status() const override;
    void WriteBody(infra::TextOutputStream& stream) const override;
    infra::BoundedConstString ContentType() const override;

private:
    infra::BoundedConstString path;
    application::PostmasterDiscovery& discovery;
    mutable std::string json;
};

HttpPageReverseProxyConfiguration::HttpPageReverseProxyConfiguration(infra::BoundedConstString path, application::PostmasterDiscovery& discovery)
    : path(path)
    , discovery(discovery)
{}

bool HttpPageReverseProxyConfiguration::ServesRequest(const infra::Tokenizer& pathTokens) const
{
    return pathTokens.TokenAndRest(0) == path;
}

void HttpPageReverseProxyConfiguration::RespondToRequest(services::HttpRequestParser& parser, services::HttpServerConnection& connection)
{
    if (parser.Verb() == services::HttpVerb::get)
        connection.SendResponse(*this);
    else
        connection.SendResponse(services::HttpResponseMethodNotAllowed::Instance());
}

infra::BoundedConstString HttpPageReverseProxyConfiguration::Status() const
{
    return services::http_responses::ok;
}

void HttpPageReverseProxyConfiguration::WriteBody(infra::TextOutputStream& stream) const
{
    struct Group
    {
        std::string groupName;
        infra::BoundedConstString attributes;
        std::vector<std::string> urls;
    };

    std::vector<Group> groups;

    int index = 0;
    discovery.EnumerateDiscoveredPostmasters([&groups, &index](const application::PostmasterInfo& postmaster, infra::Duration)
        {
            services::GlobalTracer().Trace() << "Discovered postmaster: " << postmaster.hostname << " with attributes " << postmaster.attributes;

            for (auto& group : groups)
                if (group.attributes == postmaster.attributes)
                {
                    infra::StdStringOutputStream::WithStorage url;
                    url << "http://" << postmaster.ipAddress << "/";
                    group.urls.emplace_back(url.Storage());
                    return;
                }

            infra::StdStringOutputStream::WithStorage serviceName;
            serviceName << "group" << index;
            infra::StdStringOutputStream::WithStorage url;
            url << "http://" << postmaster.ipAddress << "/";
            groups.emplace_back(Group{ serviceName.Storage(), postmaster.attributes, { "http://host.docker.internal:90", url.Storage() } });
            ++index;
        });

    infra::StdStringOutputStream::WithStorage routersFormatterStream;
    {
        infra::JsonObjectFormatter routersFormatter{ routersFormatterStream };
        for (const auto& group : groups)
        {
            auto groupFormatterStream{ routersFormatter.AddObject(group.groupName.c_str()) };
            infra::JsonObjectFormatter groupFormatter{ groupFormatterStream };
            {
                auto entryPoints(groupFormatter.SubArray("entrypoints"));
                entryPoints.Add("http");
            }
            groupFormatter.Add("service", group.groupName);
            infra::StdStringOutputStream::WithStorage rule;
            rule << "PathPrefix(`/" << group.attributes << "`)";
            groupFormatter.Add("rule", rule.Storage());
            {
                auto middlewaresFormatter{ groupFormatter.SubArray("middlewares") };
                middlewaresFormatter.Add(group.groupName);
            }
        }
    }

    infra::StdStringOutputStream::WithStorage middlewaresFormatterStream;
    {
        infra::JsonObjectFormatter middlewaresFormatter(middlewaresFormatterStream);
        for (const auto& group : groups)
        {
            auto redirectionFormatterStream{ middlewaresFormatter.AddObject(group.groupName.c_str()) };
            infra::JsonObjectFormatter redirectionFormatter{ redirectionFormatterStream };
            auto groupFormatterStream{ redirectionFormatter.AddObject("stripPrefix") };
            infra::JsonObjectFormatter groupFormatter{ groupFormatterStream };
            infra::StdStringOutputStream::WithStorage prefix;
            prefix << "/" + group.attributes;
            groupFormatter.Add("prefixes", prefix.Storage());
        }
    }

    infra::StdStringOutputStream::WithStorage servicesFormatterStream;
    {
        infra::JsonObjectFormatter servicesFormatter(servicesFormatterStream);

        for (const auto& group : groups)
        {
            auto pageServerFormatterStream{ servicesFormatter.AddObject(group.groupName.c_str()) };
            infra::JsonObjectFormatter pageServerFormatter{ pageServerFormatterStream };
            auto loadBalancerFormatterStream{ pageServerFormatter.AddObject("loadBalancer") };
            infra::JsonObjectFormatter loadBalancerFormatter{ loadBalancerFormatterStream };
            infra::JsonArrayFormatter serversFormatter{ loadBalancerFormatter.SubArray("servers") };
            for (const auto& url : group.urls)
            {
                infra::JsonObjectFormatter serverFormatter{ serversFormatter.SubObject() };
                serverFormatter.Add("url", url);
            }
        }
    }

    infra::StdStringOutputStream::WithStorage resultFormatterStream;
    {
        infra::JsonObjectFormatter topFormatter(resultFormatterStream);
        auto httpFormatterStream{ topFormatter.AddObject("http") };
        infra::JsonObjectFormatter httpFormatter{ httpFormatterStream };
        httpFormatter.AddSubObject("routers", routersFormatterStream.Storage());
        httpFormatter.AddSubObject("middlewares", middlewaresFormatterStream.Storage());
        httpFormatter.AddSubObject("services", servicesFormatterStream.Storage());
    }

    services::GlobalTracer().Trace() << "Output: " << resultFormatterStream.Storage();

    stream << resultFormatterStream.Storage();
}

infra::BoundedConstString HttpPageReverseProxyConfiguration::ContentType() const
{
    return "text/json";
}

int main(int argc, const char* argv[], const char* env[])
{
    static hal::TimerServiceGeneric timerService;
    static main_::NetworkAdapter network;
    static services::DefaultHttpServer::WithBuffer<2048> httpServer(network.ConnectionFactory(), 90);
    static services::HttpPageWithContent page("page", "<h1>Welcome</h1>", "text/html");

    static main_::MdnsDiscovery discovery{ network.DatagramFactory(), network.Multicast() };

    static services::DefaultHttpServer::WithBuffer<2048> traefikConfigurationServer(network.ConnectionFactory(), 9000);
    static HttpPageReverseProxyConfiguration configuration{ "api", discovery.discovery };

    httpServer.AddPage(page);
    traefikConfigurationServer.AddPage(configuration);

    network.Run();

    return 0;
}
