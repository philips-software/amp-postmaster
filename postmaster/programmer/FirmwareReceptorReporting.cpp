#include "postmaster/programmer/FirmwareReceptorReporting.hpp"

namespace application
{
    FirmwareReceptorReporting::FirmwareReceptorReporting(FirmwareReceptor& delegate, const infra::Function<void(bool receiving)>& reporter)
        : delegate(delegate)
        , reporter(reporter)
    {}

    void FirmwareReceptorReporting::ReceptionStarted()
    {
        reporter(true);
        delegate.ReceptionStarted();
    }

    void FirmwareReceptorReporting::DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader)
    {
        delegate.DataReceived(std::move(reader));
    }

    void FirmwareReceptorReporting::ReceptionStopped(const infra::Function<void()>& onDone)
    {
        delegate.ReceptionStopped(onDone);
        reporter(false);
    }
}
