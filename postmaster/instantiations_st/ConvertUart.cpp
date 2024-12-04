#include "postmaster/instantiations_st/ConvertUart.hpp"

namespace main_
{
    uint32_t Convert(UartConfig::Parity parity)
    {
        switch (parity)
        {
            case UartConfig::Parity::none:
                return USART_PARITY_NONE;
            case UartConfig::Parity::even:
                return USART_PARITY_EVEN;
            default:
                std::abort();
        }
    }

    hal::UartStmDma::Config Convert(const UartConfig& config)
    {
        hal::UartStmDma::Config result;

        result.baudrate = config.baudrate;
        result.parity = Convert(config.parity);

        return result;
    }
}
