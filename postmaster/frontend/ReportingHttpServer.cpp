#include "postmaster/frontend/ReportingHttpServer.hpp"

namespace application
{
    ReportingHttpServerConnectionObserver::ReportingHttpServerConnectionObserver(infra::BoundedString& buffer, HttpPageServer& httpServer, const infra::Function<void(bool open, services::IPAddress address)>& reporter, services::IPAddress address)
        : services::HttpServerConnectionObserver(buffer, httpServer)
        , reporter(reporter)
    {
        reporter(true, address);
    }

    ReportingHttpServerConnectionObserver::~ReportingHttpServerConnectionObserver()
    {
        reporter(false, services::IPAddress());
    }

    ReportingHttpServer::ReportingHttpServer(infra::BoundedString& buffer, services::ConnectionFactory& connectionFactory, uint16_t port, const infra::Function<void(bool open, services::IPAddress address)>& reporter)
        : SingleConnectionListener(connectionFactory, port, { connectionCreator })
        , reporter(reporter)
        , buffer(buffer)
        , connectionCreator([this](std::optional<ReportingHttpServerConnectionObserver>& value, services::IPAddress address)
              {
                  value.emplace(this->buffer, *this, this->reporter, address);
              })
    {}
}
