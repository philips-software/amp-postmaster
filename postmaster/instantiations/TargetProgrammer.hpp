#ifndef POSTMASTER_TARGET_PROGRAMMER_HPP
#define POSTMASTER_TARGET_PROGRAMMER_HPP

#include "infra/event/EventDispatcher.hpp"
#include "infra/util/Function.hpp"
#include "postmaster/instantiations/UartCreator.hpp"
#include "postmaster/programmer/FirmwareReceptorReporting.hpp"
#include "postmaster/programmer/FirmwareReceptorResetTarget.hpp"
#include "postmaster/programmer/FirmwareReceptorToFlash.hpp"
#include "postmaster/programmer/FlashAligner.hpp"
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
                      really_assert(!state);
                      state.emplace(
                          this->uartProgrammerCreator, [this]()
                          {
                              state->firmwareReceptorToFlash.FlashInitializationDone();
                          },
                          [this](infra::BoundedConstString reason)
                          {
                              this->page.Close();
                              this->page.ResetReceptor(reason);
                              this->page.SetReceptor(firmwareReceptorReporting);
                          });
                      return state->firmwareReceptorToFlash;
                  },
                  [this]()
                  {
                      state->Stop();
                      // The state is not destroyed immediately; any scheduled UART data must first be processed. By scheduling
                      // this as an event, other events are first handled
                      infra::EventDispatcher::Instance().Schedule([this]()
                          {
                              state = std::nullopt;
                          });
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

            void Stop()
            {
                communicator.Stop();
            }

            infra::ProxyCreator<UartCreator&> serial;

            services::StBootloaderCommunicatorUart communicator;
            std::array<uint32_t, 12> sectors{ 0x8000, 0x8000, 0x8000, 0x8000, 0x20000, 0x40000, 0x40000, 0x40000, 0x40000, 0x40000, 0x40000, 0x40000 };
            services::FlashHeterogeneousOnStBootloaderCommunicator communicatorFlash{ sectors, communicator };
            services::FlashAligner::WithAlignment<16> alignedFlash{ communicatorFlash };
            application::FirmwareReceptorToFlash firmwareReceptorToFlash{ alignedFlash, [this](const infra::Function<void()>& onDone)
                {
                    alignedFlash.Flush(onDone);
                } };
        };

        UartCreator& uartProgrammerCreator;
        application::HttpPageFirmware& page;

        application::FirmwareReceptorResetTarget receptorResetTarget;
        application::FirmwareReceptorReporting firmwareReceptorReporting;
        std::optional<State> state;
        infra::CreatorExternal<application::FirmwareReceptor, void()> stateCreator;
    };
}

#endif
