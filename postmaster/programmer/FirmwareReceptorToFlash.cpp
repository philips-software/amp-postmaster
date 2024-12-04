#include "postmaster/programmer/FirmwareReceptorToFlash.hpp"
#include "infra/util/PostAssign.hpp"

namespace application
{
    FirmwareReceptorToFlash::FirmwareReceptorToFlash(hal::Flash& flash)
        : flash(flash)
    {}

    void FirmwareReceptorToFlash::ReceptionStarted()
    {
        index = 0;

        busy = true;
        flash.EraseAll([this]()
            {
                OnEraseDone();
            });
    }

    void FirmwareReceptorToFlash::DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader)
    {
        this->reader = std::move(reader);
        TryWrite();
    }

    void FirmwareReceptorToFlash::ReceptionStopped()
    {}

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
}
