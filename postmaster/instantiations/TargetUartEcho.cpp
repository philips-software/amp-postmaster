#include "postmaster/instantiations/TargetUartEcho.hpp"

namespace main_
{
    TargetUartEcho::TargetUartEcho(application::Authentication& authentication, infra::BoundedConstString url, UartCreator& serialCreator)
        : serialCreator(serialCreator)
        , targetUartConnectionCreator([this](infra::Optional<Bridge>& value)
              {
                  value.Emplace(this->serialCreator);
              })
        , page{ authentication, url, factory }
    {}

    TargetUartEcho::Bridge::Bridge(UartCreator& serialCreator)
        : serial(serialCreator, UartConfig())
    {}

    TargetUartEcho::Bridge::operator services::ConnectionObserver&()
    {
        return webSocket;
    }

    TargetUartEcho::Bridge::operator const services::ConnectionObserver&() const
    {
        return webSocket;
    }
}
