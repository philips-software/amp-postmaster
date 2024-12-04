#include "hal_st/instantiations/NucleoTracerInfrastructure.hpp"
#include "hal_st/instantiations/StmEventInfrastructure.hpp"
#include "hal_st/stm32fxxx/DefaultClockDiscoveryF407G.hpp"
#include "hal_st/stm32fxxx/UniqueDeviceId.hpp"
#include "hal_st/stm32fxxx/WatchDogStm.hpp"
#include "postmaster/instantiations/Configuration.hpp"
#include "postmaster/instantiations_st/ConvertUart.hpp"
#include "postmaster/instantiations_st/Display.hpp"
#include "postmaster/instantiations_st/EthernetPostmaster.hpp"
#include "postmaster/instantiations_st/Flash.hpp"
#include "services/tracer/GlobalTracer.hpp"

const uint32_t* interruptStack = nullptr;

extern "C" [[gnu::used]] void DefaultHandlerImpl(const uint32_t* stack)
{
    interruptStack = stack;
    hal::InterruptTable::Instance().Invoke(hal::ActiveInterrupt());
    interruptStack = nullptr;
}

extern "C" [[gnu::naked]] void Default_Handler_Forwarded()
{
    asm volatile(
        "tst   lr, #4           \n"
        "ite   eq               \n"
        "mrseq r0, msp          \n"
        "mrsne r0, psp          \n"
        "b DefaultHandlerImpl \n");
}

void HardFault()
{
    auto pc = interruptStack[6];
    services::GlobalTracer().Trace() << "Hard fault at 0x" << infra::hex << infra::Width(8, '0') << pc;
    std::abort();
}

void WatchdogTimeout()
{
    auto pc = interruptStack[6];
    services::GlobalTracer().Trace() << "Watchdog interrupt at 0x" << infra::hex << infra::Width(8, '0') << pc;
    std::abort();
}

unsigned int hse_value = 8000000;
extern uint8_t _application_start;

static constexpr std::array<std::pair<hal::Port, uint8_t>, 9> ethernetPins = { { { hal::Port::A, 2 },
    { hal::Port::C, 1 },
    { hal::Port::A, 1 },
    { hal::Port::A, 7 },
    { hal::Port::C, 4 },
    { hal::Port::C, 5 },
    { hal::Port::B, 11 },
    { hal::Port::B, 12 },
    { hal::Port::B, 13 } } };

namespace main_
{
    struct TargetUarts
    {
        TargetUarts(hal::DmaStm& dma)
            : uartTransmitStream{ dma, hal::DmaChannelId{ 2, 7, 4 } }
            , uartProgrammerCreator{ [this, &dma](infra::Optional<hal::UartStmDma>& value, const UartConfig& config)
                {
                    value.Emplace(uartTransmitStream, 1, uartProgrammerTx, uartProgrammerRx, Convert(config));
                } }
            , uartExternalCreator{ [this, &dma](infra::Optional<hal::UartStmDma>& value, const UartConfig& config)
                {
                    value.Emplace(uartTransmitStream, 1, uartExternalTx, uartExternalRx, Convert(config));
                } }
        {}

        hal::DmaStm::TransmitStream uartTransmitStream;
        hal::GpioPinStm uartProgrammerTx{ hal::Port::B, 6 };
        hal::GpioPinStm uartProgrammerRx{ hal::Port::A, 10 };
        infra::Creator<hal::SerialCommunication, hal::UartStmDma, void(const UartConfig& config)> uartProgrammerCreator;

        hal::GpioPinStm uartExternalTx{ hal::Port::A, 9 };
        hal::GpioPinStm uartExternalRx{ hal::Port::B, 7 };
        infra::Creator<hal::SerialCommunication, hal::UartStmDma, void(const UartConfig& config)> uartExternalCreator;
    };
}

int main()
{
    SCB->VTOR = reinterpret_cast<uint32_t>(&_application_start);
    HAL_Init();
    ConfigureDefaultClockDiscoveryF407G();

    static main_::StmEventInfrastructure eventInfrastructure;
    static hal::ImmediateInterruptHandler hardfaultRegistration(/*HardFault_IRQn*/ static_cast<IRQn_Type>(-13), HardFault);
    static hal::WatchDogStm watchdog(WatchdogTimeout);
    static main_::NucleoF767ziTracerInfrastructure tracer;
    services::SetGlobalTracerInstance(tracer.tracer);

    tracer.tracer.Trace() << "Version: " << Postmaster::generated::VERSION_FULL;

    static hal::DmaStm dma;
    static main_::Flash flash(dma);
    static main_::Configuration configuration(
        flash.configurationStore[0], flash.configurationStore[1], hal::UniqueDeviceId(), []()
        {
            static main_::TargetUarts targetUarts(dma);
            static main_::Display display(configuration.store.Configuration());
            static main_::EthernetPostmaster ethernet(ethernetPins, configuration, flash.upgradePack, targetUarts.uartProgrammerCreator, targetUarts.uartExternalCreator, display.viewStatus.SubView());
        },
        tracer.tracer);

    eventInfrastructure.Run();
    __builtin_unreachable();
}
