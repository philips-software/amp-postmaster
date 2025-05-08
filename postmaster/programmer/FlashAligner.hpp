#ifndef POSTMASTER_FLASH_ALIGNER_HPP
#define POSTMASTER_FLASH_ALIGNER_HPP

#include "infra/util/AutoResetFunction.hpp"
#include "infra/util/BoundedVector.hpp"
#include "infra/util/WithStorage.hpp"
#include "services/util/FlashDelegate.hpp"

namespace services
{
    // The purpose of this class is to make sure that writes to flash are always aligned on a certain boundary. This is used
    // when writing to internal flash, which must often be written in multiples of 8 or 16 bytes
    class FlashAligner
        : public services::FlashDelegate
    {
    public:
        template<std::size_t Alignment>
        using WithAlignment = infra::WithStorage<FlashAligner, infra::BoundedVector<uint8_t>::WithMaxSize<Alignment>>;

        FlashAligner(infra::BoundedVector<uint8_t>& buffer, hal::Flash& delegate);

        void WriteBuffer(infra::ConstByteRange buffer, uint32_t address, infra::Function<void()> onDone) override;

    private:
        infra::BoundedVector<uint8_t>& alignedBuffer;
        infra::ConstByteRange buffer;
        uint32_t address;
        infra::AutoResetFunction<void()> onDone;
    };
}

#endif
