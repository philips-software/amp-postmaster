#include "postmaster/programmer/FlashAligner.hpp"

namespace services
{
    FlashAligner::FlashAligner(infra::BoundedVector<uint8_t>& buffer, hal::Flash& delegate)
        : FlashDelegate(delegate)
        , alignedBuffer(buffer)
    {}

    void FlashAligner::Flush(const infra::Function<void()>& onDone)
    {
        if (alignedBuffer.empty())
            onDone();
        else
        {
            auto size = alignedBuffer.size();
            alignedBuffer.resize(alignedBuffer.max_size());
            FlashDelegate::WriteBuffer(infra::MakeRange(alignedBuffer), address - size, onDone);
        }
    }

    void FlashAligner::WriteBuffer(infra::ConstByteRange buffer, uint32_t address, infra::Function<void()> onDone)
    {
        if (!alignedBuffer.empty())
        {
            auto range = infra::Head(buffer, alignedBuffer.max_size() - alignedBuffer.size());
            alignedBuffer.insert(alignedBuffer.end(), range.begin(), range.end());
            buffer.pop_front(range.size());
            address += range.size();
        }

        if (alignedBuffer.full())
        {
            this->buffer = buffer;
            this->address = address;
            this->onDone = onDone;

            FlashDelegate::WriteBuffer(infra::MakeRange(alignedBuffer), address - alignedBuffer.size(), [this]()
                {
                    alignedBuffer.clear();
                    auto onDoneCopy = this->onDone.Clone();
                    this->onDone = nullptr;
                    WriteBuffer(this->buffer, this->address, onDoneCopy);
                });
        }
        else
        {
            auto sendNowSize = buffer.size() - buffer.size() % alignedBuffer.max_size();
            auto sendNow = infra::Head(buffer, sendNowSize);
            auto sendLater = infra::DiscardHead(buffer, sendNowSize);
            alignedBuffer.insert(alignedBuffer.end(), sendLater.begin(), sendLater.end());

            this->address = address + buffer.size();

            if (sendNow.empty())
                onDone();
            else
                FlashDelegate::WriteBuffer(sendNow, address, onDone);
        }
    }
}
