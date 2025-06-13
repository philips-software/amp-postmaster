#ifndef POSTMASTER_TARGET_UART_ECHO_HPP
#define POSTMASTER_TARGET_UART_ECHO_HPP

#include "hal/interfaces/SerialCommunication.hpp"
#include "infra/event/QueueForOneReaderOneIrqWriter.hpp"
#include "infra/util/BoundedDeque.hpp"
#include "postmaster/frontend/AuthenticatedHttpPage.hpp"
#include "postmaster/instantiations/UartCreator.hpp"
#include "services/network/EchoOnConnection.hpp"
#include "services/network/HttpPageWebSocket.hpp"
#include "services/network/WebSocketServerConnectionObserver.hpp"
#include "services/util/EchoInstantiation.hpp"

namespace main_
{
    struct TargetUartEcho
    {
        TargetUartEcho(application::Authentication& authentication, infra::BoundedConstString url, UartCreator& serialCreator);

        struct Bridge
        {
            Bridge(UartCreator& serialCreator);

            class WebSocketServerConnectionObserver
                : public services::WebSocketServerConnectionObserver::WithBufferSizes<1500, 1500>
            {
            public:
                WebSocketServerConnectionObserver(Bridge& bridge)
                    : bridge(bridge)
                {}

            protected:
                void Attached() override
                {
                    services::Connection::Attach(infra::MakeContainedSharedObject(bridge.echoConnection, services::ConnectionObserver::Subject().ObserverPtr()));
                }

            private:
                Bridge& bridge;
            };

            infra::ProxyCreator<hal::SerialCommunication, void(const UartConfig& config)> serial;
            services::MethodSerializerFactory::ForServices<>::AndProxies<> serializerFactory;
            hal::BufferedSerialCommunicationOnUnbuffered::WithStorage<256> bufferedSerial{ *serial };
            main_::EchoOnSesame::WithMessageSize<256> echoUart{ bufferedSerial, serializerFactory };
            services::EchoOnConnection echoConnection{ serializerFactory };
            WebSocketServerConnectionObserver webSocket{ *this };

            services::ServiceForwarderAll forwardLeft{ echoUart.echo, echoConnection };
            services::ServiceForwarderAll forwardRight{ echoConnection, echoUart.echo };

            operator services::ConnectionObserver&();
            operator const services::ConnectionObserver&() const;
        };

        UartCreator& serialCreator;
        infra::Creator<services::ConnectionObserver, Bridge, void()> targetUartConnectionCreator;
        services::WebSocketObserverFactoryImpl factory{ { targetUartConnectionCreator } };
        application::AuthenticatedHttpPage::WithPage<services::HttpPageWebSocket> page;
    };
}

#endif
