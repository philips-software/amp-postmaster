#include "postmaster/programmer/FirmwareReceptorResetWhenDone.hpp"
#include "infra/util/PostAssign.hpp"

namespace application
{
    FirmwareReceptorResetWhenDone::FirmwareReceptorResetWhenDone(FirmwareReceptor& delegate, hal::Reset& reset)
        : delegate(delegate)
        , reset(reset)
    {}

    void FirmwareReceptorResetWhenDone::ReceptionStarted()
    {
        delegate.ReceptionStarted();
    }

    void FirmwareReceptorResetWhenDone::DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader)
    {
        delegate.DataReceived(std::move(reader));
    }

    void FirmwareReceptorResetWhenDone::ReceptionStopped()
    {
        delegate.ReceptionStopped();
        delayedReboot.Start(std::chrono::seconds(1), [this]()
            {
                reset.ResetModule("Firmare reception done");
            });
    }
}
