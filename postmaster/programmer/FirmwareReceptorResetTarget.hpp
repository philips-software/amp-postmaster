#include "hal/interfaces/Gpio.hpp"
#include "infra/timer/Timer.hpp"
#include "infra/util/Optional.hpp"
#include "infra/util/ProxyCreator.hpp"
#include "postmaster/programmer/FirmwareReceptor.hpp"

namespace application
{
    class FirmwareReceptorResetTarget
        : public FirmwareReceptor
    {
    public:
        FirmwareReceptorResetTarget(hal::GpioPin& reset, hal::GpioPin& boot0, infra::CreatorBase<FirmwareReceptor, void()>& delegateCreator);

        virtual void ReceptionStarted() override;
        virtual void DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader) override;
        virtual void ReceptionStopped() override;

    private:
        hal::GpioPin& reset;
        hal::GpioPin& boot0;

        infra::CreatorBase<FirmwareReceptor, void()>& delegateCreator;
        infra::Optional<infra::ProxyCreator<decltype(delegateCreator)>> delegate;

        infra::Optional<hal::OutputPin> activateBoot0;
        infra::Optional<hal::OutputPin> activateReset;

        bool starting = false;

        infra::TimerSingleShot timer;
        infra::SharedPtr<infra::StreamReaderWithRewinding> saveReader;
    };
}
