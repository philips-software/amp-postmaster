#ifndef POSTMASTER_CONVERT_UART_HPP
#define POSTMASTER_CONVERT_UART_HPP

#include "hal_st/stm32fxxx/UartStmDma.hpp"
#include "postmaster/instantiations/TargetProgrammer.hpp"

namespace main_
{
    uint32_t Convert(UartConfig::Parity parity);
    hal::UartStmDma::Config Convert(const UartConfig& config);
}

#endif
