#ifndef POSTMASTER_UART_CONFIG_HPP
#define POSTMASTER_UART_CONFIG_HPP

#include "hal/interfaces/SerialCommunication.hpp"
#include "infra/util/ProxyCreator.hpp"

namespace main_
{
    struct UartConfig
    {
        constexpr UartConfig()
        {}

        enum class Parity
        {
            none,
            even
        };

        uint32_t baudrate = 115200;
        Parity parity = Parity::none;
    };

    using UartCreator = infra::CreatorBase<hal::SerialCommunication, void(const UartConfig& config)>;
}

#endif
