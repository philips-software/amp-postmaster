#ifndef POSTMASTER_HTTP_PAGE_DISCOVERY_HPP
#define POSTMASTER_HTTP_PAGE_DISCOVERY_HPP

#include "postmaster/instantiations/MdnsDiscovery.hpp"
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
        virtual bool ServesRequest(const infra::Tokenizer& pathTokens) const override;
        virtual void RespondToRequest(services::HttpRequestParser& parser, services::HttpServerConnection& connection) override;

        // Implementation of HttpResponse
        virtual infra::BoundedConstString Status() const override;
        virtual void WriteBody(infra::TextOutputStream& stream) const override;

    private:
        infra::BoundedConstString path;
        application::PostmasterDiscovery& discovery;
    };
}

#endif
