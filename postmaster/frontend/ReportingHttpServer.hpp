#ifndef POSTMASTER_REPORTING_HTTP_SERVER_HPP
#define POSTMASTER_REPORTING_HTTP_SERVER_HPP

#include "services/network/HttpServer.hpp"

namespace application
{
    class ReportingHttpServerConnectionObserver
        : public services::HttpServerConnectionObserver
    {
    public:
        ReportingHttpServerConnectionObserver(infra::BoundedString& buffer, HttpPageServer& httpServer, const infra::Function<void(bool open, services::IPAddress address)>& reporter, services::IPAddress address);
        ~ReportingHttpServerConnectionObserver();

    private:
        infra::Function<void(bool open, services::IPAddress address)> reporter;
    };

    class ReportingHttpServer
        : public services::SingleConnectionListener
        , public services::HttpPageServer
    {
    public:
        template<::size_t BufferSize>
        using WithBuffer = infra::WithStorage<ReportingHttpServer, infra::BoundedString::WithStorage<BufferSize>>;

        ReportingHttpServer(infra::BoundedString& buffer, services::ConnectionFactory& connectionFactory, uint16_t port, const infra::Function<void(bool open, services::IPAddress address)>& reporter);

    private:
        infra::Function<void(bool open, services::IPAddress address)> reporter;
        infra::BoundedString& buffer;
        infra::Creator<services::ConnectionObserver, ReportingHttpServerConnectionObserver, void(services::IPAddress address)> connectionCreator;
    };
}

#endif
