#include "postmaster/instantiations/HttpPageDiscovery.hpp"
#include "infra/syntax/JsonFormatter.hpp"
#include "services/network/Address.hpp"
#include "services/network/HttpErrors.hpp"

namespace application
{
    HttpPageDiscovery::HttpPageDiscovery(infra::BoundedConstString path, application::PostmasterDiscovery& discovery)
        : path(path)
        , discovery(discovery)
    {}

    bool HttpPageDiscovery::ServesRequest(const infra::Tokenizer& pathTokens) const
    {
        return pathTokens.TokenAndRest(0) == path;
    }

    void HttpPageDiscovery::RespondToRequest(services::HttpRequestParser& parser, services::HttpServerConnection& connection)
    {
        if (parser.Verb() == services::HttpVerb::get)
            connection.SendResponse(*this);
        else
            connection.SendResponse(services::HttpResponseBadRequest::Instance());
    }

    infra::BoundedConstString HttpPageDiscovery::Status() const
    {
        return services::http_responses::ok;
    }

    void HttpPageDiscovery::WriteBody(infra::TextOutputStream& stream) const
    {
        infra::JsonObjectFormatter discoveredDevices(stream);
        auto devices = discoveredDevices.SubArray("devices");

        discovery.EnumerateDiscoveredPostmasters([&devices](const PostmasterInfo& postmaster, infra::Duration seenSince)
            {
                auto device = devices.SubObject();

                device.Add("hostname", postmaster.hostname);
                device.Add("version", postmaster.versionFull);
                device.Add("attributes", postmaster.attributes);
            });
    }
}
