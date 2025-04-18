#ifndef POSTMASTER_HTTP_SERVER_FRONT_END_HPP
#define POSTMASTER_HTTP_SERVER_FRONT_END_HPP

#include "generated/page_contents/IndexHtml.hpp"
#include "generated/page_contents/StyleCss.hpp"
#include "generated/page_contents/UploadJs.hpp"
#include "postmaster/frontend/AuthenticatedHttpPage.hpp"
#include "postmaster/frontend/ReportingHttpServer.hpp"
#include "postmaster/instantiations/HttpPageConfiguration.hpp"
#include "services/network/HttpServer.hpp"
#include "services/util/ConfigurationStore.hpp"

namespace main_
{
    struct HttpServerFrontEnd
    {
        HttpServerFrontEnd(application::ReportingHttpServer::ConnectionAllocator& allocator, services::ConnectionFactory& connectionFactory, uint16_t port, services::ConfigurationStoreAccess<infra::BoundedString>& hostname,
            services::ConfigurationStoreAccess<infra::BoundedString>& attributes, services::ConfigurationStoreAccess<infra::BoundedString>& password,
            application::Authentication& authentication, const infra::Function<void(bool open, services::IPAddress address)>& reporter, const infra::Function<void(bool receiving)>& receivingTarget, const infra::Function<void(bool receiving)>& receivingSelf);

        void Stop(const infra::Function<void()>& onDone)
        {
            server.Stop(onDone, true);
        }

        services::HttpPageWithContent frontendHtml{ "", page_contents::indexHtml, "text/html;charset=UTF-8" };
        services::HttpPageWithContent frontendCss{ "style.css", page_contents::styleCss, "text/css" };
        services::HttpPageWithContent frontendJs{ "upload.js", page_contents::uploadJs, "text/javascript" };
        application::AuthenticatedHttpPage::WithPage<application::HttpPageConfiguration> configuration;

        application::ReportingHttpServer server;
    };
}

#endif
