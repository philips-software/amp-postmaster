#ifndef POSTMASTER_FLASH_HPP
#define POSTMASTER_FLASH_HPP

#include "hal_st/stm32fxxx/FlashInternalStm.hpp"
#include "hal_st/stm32fxxx/GpioStm.hpp"
#include "hal_st/stm32fxxx/SpiMasterStmDma.hpp"
#include "services/util/FlashRegion.hpp"
#include "services/util/FlashSpi.hpp"
#include "services/util/SpiMasterWithChipSelect.hpp"

// #define UPG_IN_INTERNAL_FLASH

#ifdef UPG_IN_INTERNAL_FLASH
extern uint8_t _flash_start;
extern uint8_t _flash_end;
#endif

namespace main_
{
    struct Flash
    {
        Flash(hal::DmaStm& dma);

        hal::GpioPinStm spiChipSelect{ hal::Port::A, 15 };
        hal::GpioPinStm spiClock{ hal::Port::C, 10 };
        hal::GpioPinStm spiMiso{ hal::Port::C, 11 };
        hal::GpioPinStm spiMosi{ hal::Port::C, 12 };
        hal::DmaStm::TransmitStream transmitStream;
        hal::DmaStm::ReceiveStream receiveStream;
        hal::SpiMasterStmDma spiMaster;
        services::SpiMasterWithChipSelect spiMasterWithChipSelect{ spiMaster, spiChipSelect };
        services::FlashSpi flash{ spiMasterWithChipSelect };

        std::array<services::FlashRegion, 2> configurationStore{ services::FlashRegion{ flash, 0, 1 }, services::FlashRegion{ flash, 1, 1 } };
#ifdef UPG_IN_INTERNAL_FLASH
        std::array<uint32_t, 12> sectorSizes{
            0x08000, 0x08000, 0x08000, 0x08000,
            0x20000, 0x40000, 0x40000, 0x40000,
            0x40000, 0x40000, 0x40000, 0x40000
        };

        infra::ConstByteRange flashMemory{ &_flash_start, &_flash_end };
        hal::FlashInternalStm internalFlash{ infra::MakeRange(sectorSizes), flashMemory };
        services::FlashRegion upgradePack{ internalFlash, 10, 2 };
#else
        services::FlashRegion upgradePack{ flash, 2, 510 };
#endif
    };
}

#endif
