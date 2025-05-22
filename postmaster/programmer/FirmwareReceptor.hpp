#ifndef POSTMASTER_PROGRAMMER_FIRMWARE_RECEPTOR_HPP
#define POSTMASTER_PROGRAMMER_FIRMWARE_RECEPTOR_HPP

#include "infra/stream/InputStream.hpp"
#include "infra/util/SharedPtr.hpp"

namespace application
{
    class FirmwareReceptor
    {
    protected:
        FirmwareReceptor() = default;
        FirmwareReceptor(const FirmwareReceptor& other) = delete;
        FirmwareReceptor& operator=(const FirmwareReceptor& other) = delete;
        virtual ~FirmwareReceptor() = default;

    public:
        virtual void ReceptionStarted() = 0;
        virtual void DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader) = 0;
        virtual void ReceptionStopped(const infra::Function<void()>& onDone) = 0;
    };
}

#endif
