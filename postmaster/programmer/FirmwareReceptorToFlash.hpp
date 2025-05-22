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
        FirmwareReceptorToFlash(
            hal::Flash& flash, const infra::Function<void(const infra::Function<void()>& onDone)>& onReceptionDone = [](const infra::Function<void()>& onDone)
                               {
                                   onDone();
                               });

        void FlashInitializationDone();

        virtual void ReceptionStarted() override;
        virtual void DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader) override;
        virtual void ReceptionStopped(const infra::Function<void()>& onDone) override;

    private:
        void OnEraseDone();
        void TryWrite();
        void TryEraseAll();

    private:
        hal::Flash& flash;
        infra::Function<void(const infra::Function<void()>& onDone)> onReceptionDone;
        infra::SharedPtr<infra::StreamReaderWithRewinding> reader;
        uint32_t index = 0;
        bool busy = true;
        bool receptionStarted = false;
    };
}

#endif
