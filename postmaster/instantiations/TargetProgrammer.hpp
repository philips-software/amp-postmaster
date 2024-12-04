#ifndef POSTMASTER_TARGET_PROGRAMMER_HPP
#define POSTMASTER_TARGET_PROGRAMMER_HPP

#include "infra/util/Function.hpp"
#include "postmaster/instantiations/UartCreator.hpp"
#include "postmaster/programmer/FirmwareReceptorReporting.hpp"
#include "postmaster/programmer/FirmwareReceptorResetTarget.hpp"
#include "postmaster/programmer/FirmwareReceptorToFlash.hpp"
#include "postmaster/programmer/HttpPageFirmware.hpp"
#include "services/st_util/FlashOnStBootloaderCommunicator.hpp"
#include "services/st_util/StBootloaderCommunicatorUart.hpp"

namespace main_
{
    struct TargetProgrammer
    {
        TargetProgrammer(UartCreator& uartProgrammerCreator, application::HttpPageFirmware& page, hal::GpioPin& reset, hal::GpioPin& boot0, const infra::Function<void(bool receiving)>& receiving)
            : uartProgrammerCreator(uartProgrammerCreator)
            , page(page)
            , receptorResetTarget(reset, boot0, stateCreator)
            , firmwareReceptorReporting(receptorResetTarget, receiving)
            , stateCreator([this]() -> application::FirmwareReceptor&
                  {
                      state.Emplace(this->uartProgrammerCreator, infra::emptyFunction, [this](infra::BoundedConstString reason)
                          {
                              this->page.Close();
                              this->page.ResetReceptor(reason);
                              this->page.SetReceptor(firmwareReceptorReporting);
                          });
                      return state->firmwareReceptorToFlash;
                  },
                  [this]()
                  {
                      state = infra::none;
                  })
        {
            this->page.SetReceptor(firmwareReceptorReporting);
        }

        ~TargetProgrammer()
        {
            page.ResetReceptor("Destructing");
        }

        struct State
        {
            State(UartCreator& uartProgrammerCreator, const infra::Function<void()>& onInitialized, const infra::Function<void(infra::BoundedConstString reason)>& onError)
                : serial{ uartProgrammerCreator, []()
                    {
                        UartConfig config;
                        config.baudrate = 57600;
                        config.parity = UartConfig::Parity::even;
                        return config;
                    }() }
                , communicator(*serial, onInitialized, onError)
            {}

            infra::ProxyCreator<UartCreator&> serial;

            services::StBootloaderCommunicatorUart communicator;
            std::array<uint32_t, 12> sectors{ 0x8000, 0x8000, 0x8000, 0x8000, 0x20000, 0x40000, 0x40000, 0x40000, 0x40000, 0x40000, 0x40000, 0x40000 };
            services::FlashHeterogeneousOnStBootloaderCommunicator communicatorFlash{ sectors, communicator };
            application::FirmwareReceptorToFlash firmwareReceptorToFlash{ communicatorFlash };
        };

        UartCreator& uartProgrammerCreator;
        application::HttpPageFirmware& page;

        application::FirmwareReceptorResetTarget receptorResetTarget;
        application::FirmwareReceptorReporting firmwareReceptorReporting;
        infra::Optional<State> state;
        infra::CreatorExternal<application::FirmwareReceptor, void()> stateCreator;
    };
}

#endif
