#ifndef POSTMASTER_HTTP_PAGE_CONFIGURATION_HPP
#define POSTMASTER_HTTP_PAGE_CONFIGURATION_HPP

#include "services/network/HttpServer.hpp"
#include "services/util/ConfigurationStore.hpp"

namespace application
{
    class HttpPageConfiguration
        : public services::SimpleHttpPage
        , public services::HttpResponse
    {
    public:
        HttpPageConfiguration(infra::BoundedConstString path, services::ConfigurationStoreAccess<infra::BoundedString>& hostname,
            services::ConfigurationStoreAccess<infra::BoundedString>& attributes, services::ConfigurationStoreAccess<infra::BoundedString>& password);

        // Implementation of SimpleHttpPage
        virtual bool ServesRequest(const infra::Tokenizer& pathTokens) const override;
        virtual void RespondToRequest(services::HttpRequestParser& parser, services::HttpServerConnection& connection) override;

        // Implementation of HttpResponse
        virtual infra::BoundedConstString Status() const override;
        virtual void WriteBody(infra::TextOutputStream& stream) const override;

    private:
        infra::BoundedConstString path;
        services::ConfigurationStoreAccess<infra::BoundedString> hostname;
        services::ConfigurationStoreAccess<infra::BoundedString> attributes;
        services::ConfigurationStoreAccess<infra::BoundedString> password;
    };
}

#endif
