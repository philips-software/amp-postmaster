#ifndef POSTMASTER_PROGRAMMER_FIRMWARE_REPORTING_HPP
#define POSTMASTER_PROGRAMMER_FIRMWARE_REPORTING_HPP

#include "infra/util/Function.hpp"
#include "postmaster/programmer/FirmwareReceptor.hpp"

namespace application
{
    class FirmwareReceptorReporting
        : public FirmwareReceptor
    {
    public:
        FirmwareReceptorReporting(FirmwareReceptor& delegate, const infra::Function<void(bool receiving)>& reporter);

        virtual void ReceptionStarted() override;
        virtual void DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader) override;
        virtual void ReceptionStopped(const infra::Function<void()>& onDone) override;

    private:
        FirmwareReceptor& delegate;
        infra::Function<void(bool receiving)> reporter;
    };
}

#endif
