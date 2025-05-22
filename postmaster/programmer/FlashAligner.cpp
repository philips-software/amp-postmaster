#include "postmaster/programmer/FlashAligner.hpp"

namespace services
{
    FlashAligner::FlashAligner(infra::BoundedVector<uint8_t>& buffer, hal::Flash& delegate)
        : FlashDelegate(delegate)
        , alignedBuffer(buffer)
    {}

    void FlashAligner::Flush(const infra::Function<void()>& onDone)
    {
        alignedBuffer.resize(alignedBuffer.max_size());
        FlashDelegate::WriteBuffer(infra::MakeRange(alignedBuffer), address, onDone);
    }

    void FlashAligner::WriteBuffer(infra::ConstByteRange buffer, uint32_t address, infra::Function<void()> onDone)
    {
        if (!alignedBuffer.empty())
        {
            auto range = infra::Head(buffer, alignedBuffer.max_size() - alignedBuffer.size());
            alignedBuffer.insert(alignedBuffer.end(), range.begin(), range.end());
            buffer.pop_front(range.size());
        }

        if (alignedBuffer.full())
        {
            this->buffer = buffer;
            this->address = address;
            this->onDone = onDone;

            FlashDelegate::WriteBuffer(infra::MakeRange(alignedBuffer), address, [this]()
                {
                    alignedBuffer.clear();
                    auto onDoneCopy = this->onDone.Clone();
                    this->onDone = nullptr;
                    WriteBuffer(this->buffer, this->address + alignedBuffer.max_size(), onDoneCopy);
                });
        }
        else
        {
            auto range = infra::Head(buffer, buffer.size() - buffer.size() % alignedBuffer.max_size());
            alignedBuffer.insert(alignedBuffer.end(), range.end(), buffer.end());

            FlashDelegate::WriteBuffer(range, address, onDone);
            this->address = address + range.size();
        }
    }
}
