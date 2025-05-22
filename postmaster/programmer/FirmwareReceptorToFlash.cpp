#include "postmaster/programmer/FirmwareReceptorToFlash.hpp"
#include "infra/util/PostAssign.hpp"

namespace application
{
    FirmwareReceptorToFlash::FirmwareReceptorToFlash(hal::Flash& flash, const infra::Function<void(const infra::Function<void()>& onDone)>& onReceptionDone)
        : flash(flash)
        , onReceptionDone(onReceptionDone)
    {}

    void FirmwareReceptorToFlash::FlashInitializationDone()
    {
        busy = false;

        TryEraseAll();
    }

    void FirmwareReceptorToFlash::ReceptionStarted()
    {
        receptionStarted = true;
        TryEraseAll();
    }

    void FirmwareReceptorToFlash::DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader)
    {
        this->reader = std::move(reader);
        TryWrite();
    }

    void FirmwareReceptorToFlash::ReceptionStopped(const infra::Function<void()>& onDone)
    {
        onReceptionDone(onDone);
    }

    void FirmwareReceptorToFlash::OnEraseDone()
    {
        busy = false;
        TryWrite();
    }

    void FirmwareReceptorToFlash::TryWrite()
    {
        if (!busy && reader != nullptr)
        {
            auto range = reader->ExtractContiguousRange(1024 * 1024);
            flash.WriteBuffer(range, infra::PostAssign(index, index + range.size()), [this]()
                {
                    reader = nullptr;
                });
        }
    }

    void FirmwareReceptorToFlash::TryEraseAll()
    {
        if (!busy && receptionStarted)
        {
            index = 0;

            busy = true;
            flash.EraseAll([this]()
                {
                    OnEraseDone();
                });
        }
    }
}
