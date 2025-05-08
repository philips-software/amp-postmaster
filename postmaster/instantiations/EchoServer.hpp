#include "postmaster/instantiations/UartCreator.hpp"
#include "protobuf/echo/ServiceForwarder.hpp"
#include "services/network/Connection.hpp"
#include "services/network/EchoOnConnection.hpp"
#include "services/network/SingleConnectionListener.hpp"
#include "services/util/EchoInstantiation.hpp"

namespace main_
{
    struct EchoServer
    {
        EchoServer(services::ConnectionFactory& connectionFactory, UartCreator& serialCreator, uint16_t port);

        struct Bridge
        {
            Bridge(UartCreator& serialCreator);

            infra::ProxyCreator<hal::SerialCommunication, void(const UartConfig& config)> serial;
            services::MethodSerializerFactory::ForServices<>::AndProxies<> serializerFactory;
            hal::BufferedSerialCommunicationOnUnbuffered::WithStorage<256> bufferedSerial{ *serial };
            main_::EchoOnSesame<256> echoUart{ bufferedSerial, serializerFactory };
            services::EchoOnConnection echoConnection{ serializerFactory };

            services::ServiceForwarderAll forwardLeft{ echoUart, echoConnection };
            services::ServiceForwarderAll forwardRight{ echoConnection, echoUart };

            operator services::ConnectionObserver&();
            operator const services::ConnectionObserver&() const;
        };

        UartCreator& serialCreator;

        infra::Creator<services::ConnectionObserver, Bridge, void(services::IPAddress address)> bridgeCreator{ [this](infra::Optional<Bridge>& value, services::IPAddress address)
            {
                value.Emplace(serialCreator);
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
