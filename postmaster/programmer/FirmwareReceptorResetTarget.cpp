#include "postmaster/programmer/FirmwareReceptorResetTarget.hpp"
extern "C" void HAL_Delay(uint32_t Delay);

namespace application
{
    FirmwareReceptorResetTarget::FirmwareReceptorResetTarget(hal::GpioPin& reset, hal::GpioPin& boot0, infra::CreatorBase<FirmwareReceptor, void()>& delegateCreator)
        : reset(reset)
        , boot0(boot0)
        , delegateCreator(delegateCreator)
    {}

    void FirmwareReceptorResetTarget::ReceptionStarted()
    {
        {
            hal::OutputPin activateReset(reset, false);
            activateBoot0.Emplace(boot0, true);

       
            HAL_Delay(1);
            activateReset.Set(true);
            HAL_Delay(1);
        }

        HAL_Delay(100);
        delegate.Emplace(delegateCreator);

        (*delegate)->ReceptionStarted();
    }

    void FirmwareReceptorResetTarget::DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader)
    {
        (*delegate)->DataReceived(std::move(reader));
    }

    void FirmwareReceptorResetTarget::ReceptionStopped()
    {
        (*delegate)->ReceptionStopped();

        {
            hal::OutputPin activateReset(reset, false);
            activateBoot0 = infra::none;

            delegate = infra::none;
        }
    }
}
