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

    ReportingHttpServer::ReportingHttpServer(ConnectionAllocator& allocator, services::ConnectionFactory& connectionFactory, uint16_t port, const infra::Function<void(bool open, services::IPAddress address)>& reporter)
        : connectionAllocator(allocator)
        , reporter(reporter)
    {
        listener = connectionFactory.Listen(port, *this, services::IPVersions::both);
    }

    void ReportingHttpServer::Stop(const infra::Function<void()>& onDone, bool force)
    {
        listener = nullptr;
        waitingCreatedObserver = nullptr;

        StopConnections(onDone, force);
    }

    void ReportingHttpServer::SetNewConnectionStrategy(services::NewConnectionStrategy& newConnectionStrategy)
    {
        this->newConnectionStrategy = &newConnectionStrategy;
    }

    void ReportingHttpServer::StopCurrentConnection(void* listener)
    {
        StopConnections([this]()
            {
                newConnectionStrategy->StartNewConnection();
            },
            false);
    }

    void ReportingHttpServer::StartNewConnection()
    {
        connectionAllocator.OnAllocatable(nullptr);
        auto connectionObserver = connectionAllocator.Allocate(*this, reporter, waitingAddress);
        if (connectionObserver != nullptr)
            waitingCreatedObserver(connectionObserver);
        else
        {
            connectionAllocator.OnAllocatable([this]()
                {
                    newConnectionStrategy->StartNewConnection();
                });

            CloseOrAbortAllConnections(false);
        }
    }

    void ReportingHttpServer::ConnectionAccepted(infra::AutoResetFunction<void(infra::SharedPtr<services::ConnectionObserver> connectionObserver)>&& createdObserver, services::IPAddress address)
    {
        waitingCreatedObserver = std::move(createdObserver);
        waitingAddress = address;

        newConnectionStrategy->StartNewConnection();
    }

    void ReportingHttpServer::StopConnections(const infra::Function<void()>& onDone, bool force)
    {
        onStopConnectionsDone = onDone;

        if (connectionAllocator.NoneAllocated())
            onStopConnectionsDone();
        else
            connectionAllocator.OnAllocatable([this, force]()
                {
                    StopConnections(onStopConnectionsDone, force);
                });

        CloseOrAbortAllConnections(force);
    }

    void ReportingHttpServer::CloseOrAbortAllConnections(bool force)
    {
        for (auto& connection : connections)
            if (force)
                connection.Abort();
            else
                connection.Close();
    }

    ReportingHttpServer::Connection::Connection(ReportingHttpServer& httpServer, const infra::Function<void(bool open, services::IPAddress address)>& reporter, services::IPAddress address)
        : ReportingHttpServerConnectionObserver::WithBuffer<BufferSize>(httpServer, reporter, address)
        , httpServer(httpServer)
    {
        httpServer.connections.push_back(*this);
    }

    ReportingHttpServer::Connection::~Connection()
    {
        httpServer.connections.erase(*this);
    }
}
