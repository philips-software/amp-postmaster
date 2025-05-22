#ifndef POSTMASTER_PROGRAMMER_FIRMWARE_RECEPTOR_RESET_WHEN_DONE_HPP
#define POSTMASTER_PROGRAMMER_FIRMWARE_RECEPTOR_RESET_WHEN_DONE_HPP

#include "hal/interfaces/Reset.hpp"
#include "infra/timer/Timer.hpp"
#include "postmaster/programmer/FirmwareReceptor.hpp"

namespace application
{
    class FirmwareReceptorResetWhenDone
        : public FirmwareReceptor
    {
    public:
        FirmwareReceptorResetWhenDone(FirmwareReceptor& delegate, hal::Reset& reset);

        virtual void ReceptionStarted() override;
        virtual void DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader) override;
        virtual void ReceptionStopped(const infra::Function<void()>& onDone) override;

    private:
        FirmwareReceptor& delegate;
        hal::Reset& reset;
        infra::TimerSingleShot delayedReboot;
    };
}

#endif
