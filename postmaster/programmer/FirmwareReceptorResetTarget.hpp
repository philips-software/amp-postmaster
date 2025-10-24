#include "hal/interfaces/Gpio.hpp"
#include "infra/timer/Timer.hpp"
#include "infra/util/AutoResetFunction.hpp"
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
        virtual void ReceptionStopped(const infra::Function<void()>& onDone) override;

    private:
        hal::GpioPin& reset;
        hal::GpioPin& boot0;

        infra::CreatorBase<FirmwareReceptor, void()>& delegateCreator;
        std::optional<infra::ProxyCreator<decltype(delegateCreator)>> delegate;

        std::optional<hal::OutputPin> activateBoot0;
        std::optional<hal::OutputPin> activateReset;

        bool starting = false;

        infra::TimerSingleShot timer;
        infra::SharedPtr<infra::StreamReaderWithRewinding> saveReader;

        infra::AutoResetFunction<void()> onDone;
    };
}
