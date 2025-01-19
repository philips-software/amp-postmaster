#ifndef POSTMASTER_REPORTING_HTTP_SERVER_HPP
#define POSTMASTER_REPORTING_HTTP_SERVER_HPP

#include "infra/util/IntrusiveList.hpp"
#include "infra/util/SharedObjectAllocatorFixedSize.hpp"
#include "services/network/HttpServer.hpp"

namespace application
{
    class ReportingHttpServerConnectionObserver
        : public services::HttpServerConnectionObserver
    {
    public:
        template<size_t BufferSize>
        using WithBuffer = infra::WithStorage<ReportingHttpServerConnectionObserver,
            infra::BoundedString::WithStorage<BufferSize>>;

        ReportingHttpServerConnectionObserver(infra::BoundedString& buffer, HttpPageServer& httpServer, const infra::Function<void(bool open, services::IPAddress address)>& reporter, services::IPAddress address);
        ~ReportingHttpServerConnectionObserver();

    private:
        infra::Function<void(bool open, services::IPAddress address)> reporter;
    };

    class ReportingHttpServer
        : public services::HttpPageServer
        , public services::NewConnectionStrategy
        , private services::ServerConnectionObserverFactory
    {
    public:
        static constexpr std::size_t BufferSize = 8192;

        class Connection
            : public infra::IntrusiveList<Connection>::NodeType
            , public ReportingHttpServerConnectionObserver::WithBuffer<BufferSize>
        {
        public:
            Connection(ReportingHttpServer& httpServer, const infra::Function<void(bool open, services::IPAddress address)>& reporter, services::IPAddress address);
            Connection(const Connection& other) = delete;
            Connection& operator=(const Connection& other) = delete;
            ~Connection();

        private:
            ReportingHttpServer& httpServer;
        };

        using ConnectionAllocator = infra::SharedObjectAllocator<Connection, void(ReportingHttpServer& httpServer, const infra::Function<void(bool open, services::IPAddress address)>& reporter, services::IPAddress address)>;

        using ConnectionAllocatorFixedSize = infra::SharedObjectAllocatorFixedSize<Connection,
            void(ReportingHttpServer& httpServer, const infra::Function<void(bool open, services::IPAddress address)>& reporter, services::IPAddress address)>;

        template<std::size_t Connections>
        using WithConnections = infra::WithStorage<ReportingHttpServer, typename ConnectionAllocatorFixedSize::template WithStorage<Connections>>;

        ReportingHttpServer(ConnectionAllocator& allocator, services::ConnectionFactory& connectionFactory, uint16_t port, const infra::Function<void(bool open, services::IPAddress address)>& reporter);

        void Stop(const infra::Function<void()>& onDone, bool force);
        void SetNewConnectionStrategy(services::NewConnectionStrategy& newConnectionStrategy);

        // Implementation of NewConnectionStrategy
        void StopCurrentConnection(void* listener) override;
        void StartNewConnection() override;

    private:
        // Implementation of ServerConnectionObserverFactory
        void ConnectionAccepted(infra::AutoResetFunction<void(infra::SharedPtr<services::ConnectionObserver> connectionObserver)>&& createdObserver, services::IPAddress address) override;

        void StopConnections(const infra::Function<void()>& onDone, bool force);
        void CloseOrAbortAllConnections(bool force);

    private:
        services::NewConnectionStrategy* newConnectionStrategy = this;
        infra::Function<void(bool open, services::IPAddress address)> reporter;
        infra::SharedPtr<void> listener;

        ConnectionAllocator& connectionAllocator;
        infra::IntrusiveList<Connection> connections;

        infra::AutoResetFunction<void(infra::SharedPtr<services::ConnectionObserver> connectionObserver)> waitingCreatedObserver;
        services::IPAddress waitingAddress;

        infra::Function<void()> onStopConnectionsDone;
    };
}

#endif
