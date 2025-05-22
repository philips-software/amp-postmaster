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
        starting = true;
        activateReset.Emplace(reset, false);
        activateBoot0.Emplace(boot0, true);

        timer.Start(std::chrono::milliseconds(1), [this]()
            {
                activateReset->Set(true);

                timer.Start(std::chrono::milliseconds(1), [this]()
                    {
                        activateReset = infra::none;

                        timer.Start(std::chrono::milliseconds(100), [this]()
                            {
                                starting = false;

                                delegate.Emplace(delegateCreator);
                                (*delegate)->ReceptionStarted();

                                if (saveReader != nullptr)
                                    DataReceived(std::move(saveReader));
                            });
                    });
            });
    }

    void FirmwareReceptorResetTarget::DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader)
    {
        if (starting)
            saveReader = std::move(reader);
        else
            (*delegate)->DataReceived(std::move(reader));
    }

    void FirmwareReceptorResetTarget::ReceptionStopped(const infra::Function<void()>& onDone)
    {
        (*delegate)->ReceptionStopped(onDone);

        {
            hal::OutputPin activateReset(reset, false);
            activateBoot0 = infra::none;

            delegate = infra::none;
        }
    }
}
