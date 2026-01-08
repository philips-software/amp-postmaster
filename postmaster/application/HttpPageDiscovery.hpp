#ifndef POSTMASTER_HTTP_PAGE_DISCOVERY_HPP
#define POSTMASTER_HTTP_PAGE_DISCOVERY_HPP

#include "postmaster/application/MdnsDiscovery.hpp"
#include "services/network/HttpServer.hpp"

namespace application
{
    class HttpPageDiscovery
        : public services::SimpleHttpPage
        , public services::HttpResponse
    {
    public:
        HttpPageDiscovery(infra::BoundedConstString path, application::PostmasterDiscovery& discovery);

        // Implementation of SimpleHttpPage
        bool ServesRequest(const infra::Tokenizer& pathTokens) const override;
        void RespondToRequest(services::HttpRequestParser& parser, services::HttpServerConnection& connection) override;

        // Implementation of HttpResponse
        infra::BoundedConstString Status() const override;
        void WriteBody(infra::TextOutputStream& stream) const override;
        infra::BoundedConstString ContentType() const override;

    private:
        infra::BoundedConstString path;
        application::PostmasterDiscovery& discovery;
    };
}

#endif
