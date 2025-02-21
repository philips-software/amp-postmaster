#include "postmaster/instantiations/HttpServer.hpp"

namespace main_
{
    HttpServerFrontEnd::HttpServerFrontEnd(application::ReportingHttpServer::ConnectionAllocator& allocator, services::ConnectionFactory& connectionFactory, uint16_t port, services::ConfigurationStoreAccess<infra::BoundedString>& hostname,
        services::ConfigurationStoreAccess<infra::BoundedString>& attributes, services::ConfigurationStoreAccess<infra::BoundedString>& password, application::Authentication& authentication,
        const infra::Function<void(bool open, services::IPAddress address)>& reporter, const infra::Function<void(bool receiving)>& receivingTarget,
        const infra::Function<void(bool receiving)>& receivingSelf)
        : configuration{ authentication, "configuration", hostname, attributes, password }
        , server{ allocator, connectionFactory, port, reporter }
    {
        server.AddPage(frontendHtml);
        server.AddPage(frontendCss);
        server.AddPage(frontendJs);
        server.AddPage(configuration);
    }
}
