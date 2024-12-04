#ifndef POSTMASTER_PROGRAMMER_FIRMWARE_RECEPTOR_TO_FLASH_HPP
#define POSTMASTER_PROGRAMMER_FIRMWARE_RECEPTOR_TO_FLASH_HPP

#include "hal/interfaces/Flash.hpp"
#include "postmaster/programmer/FirmwareReceptor.hpp"

namespace application
{
    class FirmwareReceptorToFlash
        : public FirmwareReceptor
    {
    public:
        FirmwareReceptorToFlash(hal::Flash& flash);

        virtual void ReceptionStarted() override;
        virtual void DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader) override;
        virtual void ReceptionStopped() override;

    private:
        void OnEraseDone();
        void TryWrite();

    private:
        hal::Flash& flash;
        infra::SharedPtr<infra::StreamReaderWithRewinding> reader;
        uint32_t index = 0;
        bool busy = false;
    };
}

#endif
