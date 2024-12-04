#ifndef POSTMASTER_TARGET_UART_HPP
#define POSTMASTER_TARGET_UART_HPP

#include "postmaster/frontend/AuthenticatedHttpPage.hpp"
#include "postmaster/instantiations/UartCreator.hpp"
#include "postmaster/programmer/TargetUartConnection.hpp"
#include "services/network/HttpPageWebSocket.hpp"
#include "services/network/WebSocketServerConnectionObserver.hpp"

namespace main_
{
    struct TargetUart
    {
        TargetUart(application::Authentication& authentication, infra::BoundedConstString url, UartCreator& serialCreator);

        struct Bridge
        {
            Bridge(UartCreator& serialCreator)
                : serial(serialCreator, UartConfig())
            {}

            infra::ProxyCreator<UartCreator&> serial;
            application::TargetUartConnection::WithStorage<4096> uartConnection{ *serial };
        };

        UartCreator& serialCreator;
        infra::SharedOptional<Bridge> bridge;
        infra::Creator<services::ConnectionObserver, services::WebSocketServerConnectionObserver::WithBufferSizes<4096, 4096>, void()> targetUartConnection;
        services::WebSocketObserverFactoryImpl factory{ { targetUartConnection } };
        application::AuthenticatedHttpPage::WithPage<services::HttpPageWebSocket> page;
    };
}

#endif
