#include "postmaster/flex/EchoWebSocketClientFactory.hpp"

namespace application
{
    EchoWebSocketClientFactory::EchoWebSocketClientFactory(infra::BoundedString url, uint16_t port, services::ConnectionFactory& connectionFactory, services::Tracer& tracer)
        : url(url)
        , port(port)
        , connectionFactory(connectionFactory)
        , tracer(tracer)
    {}

    infra::BoundedString EchoWebSocketClientFactory::Url() const
    {
        infra::BoundedString result(url);
        result += "/target/echo/programmer";
        return result;
    }

    uint16_t EchoWebSocketClientFactory::Port() const
    {
        return port;
    }

    void EchoWebSocketClientFactory::ConnectionEstablished(infra::AutoResetFunction<void(infra::SharedPtr<services::ConnectionObserver> client)>&& createdClientObserver)
    {
        // This connection is not created directly but taken over from an existing HTTP connection
        std::abort();
    }

    void EchoWebSocketClientFactory::ConnectionFailed(ConnectFailReason reason)
    {
        // This connection is not created directly but taken over from an existing HTTP connection
        std::abort();
    }

    void EchoWebSocketClientFactory::WebSocketInitiationDone(services::Connection& connection)
    {
        tracer.Trace() << "WebSocketInitiationDone";

        auto webSocketConnection = webSocket.Emplace();
        connection.Detach();
        connection.Attach(webSocketConnection);
        webSocketConnection->Attach(echo.Emplace(serializerFactoryWebSocket));

        listener.Emplace(connectionFactory, 1234, services::SingleConnectionListener::Creators{ connectionCreator });
    }

    void EchoWebSocketClientFactory::WebSocketInitiationError(WebSocketClientObserverFactory::ConnectFailReason reason)
    {
        tracer.Trace() << "WebSocketInitiationError";
    }
}
