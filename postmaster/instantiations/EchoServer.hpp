#include "postmaster/instantiations/UartCreator.hpp"
#include "protobuf/echo/ServiceForwarder.hpp"
#include "services/network/Connection.hpp"
#include "services/network/EchoOnConnection.hpp"
#include "services/network/SingleConnectionListener.hpp"
#include "services/util/EchoInstantiation.hpp"

namespace main_
{
    class EchoOnConnection
        : public services::EchoOnConnection
    {
    public:
        EchoOnConnection(services::EchoOnSesame& otherEcho, services::MethodSerializerFactory& serializerFactory)
            : services::EchoOnConnection(serializerFactory)
            , otherEcho(otherEcho)
        {}

        virtual void Detaching() override
        {
            ReleaseReader();
            otherEcho.Reset();
        }

    private:
        services::EchoOnSesame& otherEcho;
    };

    struct EchoServer
    {
        EchoServer(services::ConnectionFactory& connectionFactory, UartCreator& serialCreator, uint16_t port);

        struct Bridge
        {
            Bridge(UartCreator& serialCreator);

            infra::ProxyCreator<hal::SerialCommunication, void(const UartConfig& config)> serial;
            services::MethodSerializerFactory::ForServices<>::AndProxies<> serializerFactory;
            hal::BufferedSerialCommunicationOnUnbuffered::WithStorage<256> bufferedSerial{ *serial };
            main_::EchoOnSesame::WithMessageSize<256> echoUart{ bufferedSerial, serializerFactory };
            EchoOnConnection echoConnection{ echoUart.echo, serializerFactory };

            services::ServiceForwarderAll forwardLeft{ echoUart.echo, echoConnection };
            services::ServiceForwarderAll forwardRight{ echoConnection, echoUart.echo };

            operator services::ConnectionObserver&();
            operator const services::ConnectionObserver&() const;
        };

        UartCreator& serialCreator;

        infra::Creator<services::ConnectionObserver, Bridge, void(services::IPAddress address)> bridgeCreator{ [this](std::optional<Bridge>& value, services::IPAddress address)
            {
                value.emplace(serialCreator);
            } };

        services::SingleConnectionListener listener;
    };

    class SingleConnectionLink
        : private services::NewConnectionStrategy
    {
    public:
        SingleConnectionLink(services::SingleConnectionListener& listener1, services::SingleConnectionListener& listener2);

    private:
        void StopCurrentConnection(void* listener) override;
        void StartNewConnection() override;

    private:
        uint32_t numStopped = 0;
        services::SingleConnectionListener* const listener1;
        services::SingleConnectionListener* const listener2;

        bool listener1RequestedNewConnection = false;
        bool listener2RequestedNewConnection = false;
    };
}
