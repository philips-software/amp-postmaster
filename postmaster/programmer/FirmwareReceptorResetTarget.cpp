#include "postmaster/programmer/FirmwareReceptorResetTarget.hpp"

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

            delegate.Emplace(delegateCreator);
        }

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
