#ifndef POSTMASTER_ECHO_WEB_SOCKET_CLIENT_FACTORY_HPP
#define POSTMASTER_ECHO_WEB_SOCKET_CLIENT_FACTORY_HPP

#include "protobuf/echo/ServiceForwarder.hpp"
#include "services/network/EchoOnConnection.hpp"
#include "services/network/SingleConnectionListener.hpp"
#include "services/network/WebSocketClientConnectionObserver.hpp"
#include "services/tracer/Tracer.hpp"

namespace application
{
    class EchoWebSocketClientFactory
        : public services::WebSocketClientObserverFactory
        , public services::HttpClientWebSocketInitiationResult
    {
    public:
        EchoWebSocketClientFactory(infra::BoundedString url, uint16_t port, services::ConnectionFactory& connectionFactory, services::Tracer& tracer);

        // Implementation of WebSocketClientObserverFactory
        infra::BoundedString Url() const override;
        uint16_t Port() const override;
        void ConnectionEstablished(infra::AutoResetFunction<void(infra::SharedPtr<services::ConnectionObserver> client)>&& createdClientObserver) override;
        void ConnectionFailed(ConnectFailReason reason) override;

        // Implementation of HttpClientWebSocketInitiationResult
        void WebSocketInitiationDone(services::Connection& connection);
        void WebSocketInitiationError(WebSocketClientObserverFactory::ConnectFailReason reason);

    private:
        infra::BoundedString url;
        uint16_t port;
        services::ConnectionFactory& connectionFactory;
        services::Tracer& tracer;

        services::MethodSerializerFactory::OnHeap serializerFactoryWebSocket;
        services::MethodSerializerFactory::OnHeap serializerFactoryListener;
        infra::SharedOptional<services::WebSocketClientConnectionObserver> webSocket;
        infra::SharedOptional<services::EchoOnConnection> echo;
        std::optional<services::SingleConnectionListener> listener;
        std::optional<services::EchoOnConnection> listenConnection;

        infra::CreatorExternal<services::ConnectionObserver, void(services::IPAddress address)> connectionCreator{ [this](services::IPAddress address) -> services::ConnectionObserver&
            {
                listenConnection.emplace(serializerFactoryListener);
                forwarder1.emplace(*echo, *listenConnection);
                forwarder2.emplace(*listenConnection, *echo);
                return *listenConnection;
            },
            [this]()
            {
                forwarder1 = std::nullopt;
                forwarder2 = std::nullopt;
                listenConnection = std::nullopt;
            } };

        std::optional<services::ServiceForwarderAll> forwarder1;
        std::optional<services::ServiceForwarderAll> forwarder2;
    };
}

#endif
