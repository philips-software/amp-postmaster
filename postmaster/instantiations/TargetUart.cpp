#include "postmaster/instantiations/TargetUart.hpp"

namespace main_
{
    TargetUart::TargetUart(application::Authentication& authentication, infra::BoundedConstString url, UartCreator& serialCreator)
        : serialCreator(serialCreator)
        , targetUartConnection([this](std::optional<services::WebSocketServerConnectionObserver::WithBufferSizes<4096, 4096>>& value)
              {
                  value.emplace();
                  auto bridgePtr = bridge.Emplace(this->serialCreator);
                  value->services::Connection::Attach(infra::MakeContainedSharedObject(bridgePtr->uartConnection, bridgePtr));
              })
        , page{ authentication, url, factory }
    {}
}
