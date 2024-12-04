#include "generated/stm32fxxx/PinoutTableDefault.hpp"
#include "hal_st/cortex/InterruptCortex.hpp"
#include "hal_st/stm32fxxx/GpioStm.hpp"
#include "hal_st/synchronous_stm32fxxx/SynchronousFlashInternalStm.hpp"
#include "hal_st/synchronous_stm32fxxx/SynchronousSpiMasterStm.hpp"
#include "services/synchronous_util/SynchronousFlashRegion.hpp"
#include "services/synchronous_util/SynchronousFlashSpi.hpp"
#include "services/synchronous_util/SynchronousSpiMasterWithChipSelect.hpp"
#include "upgrade/boot_loader/DecryptorNone.hpp"
#include "upgrade/boot_loader/ImageUpgraderFlash.hpp"
#include "upgrade/boot_loader/PackUpgrader.hpp"
#include "upgrade/boot_loader/UpgradePackLoader.hpp"
#include "upgrade/boot_loader/VerifierHashOnly.hpp"

// #define UPG_IN_INTERNAL_FLASH

constexpr hal::SynchronousSpiMasterStm::Config CreateSpiConfig()
{
    hal::SynchronousSpiMasterStm::Config config;
    config.msbFirst = true;
    config.baudRatePrescaler = SPI_BAUDRATEPRESCALER_8;
    return config;
}

constexpr services::SynchronousFlashSpiConfig CreateFlashConfig()
{
    services::SynchronousFlashSpiConfig config;
    config.numberOfSubSectors = 2048;
    return config;
}

void ProcessUpgradePack(infra::ConstByteRange flashMemory, uint32_t flashOffset)
{
    static hal::InterruptTable::WithStorage<128> interruptTable;
    static hal::GpioStm gpio(hal::pinoutTableDefaultStm, hal::analogTableDefaultStm);

    static std::array<uint32_t, 12> sectorSizes{
        0x08000, 0x08000, 0x08000, 0x08000,
        0x20000, 0x40000, 0x40000, 0x40000,
        0x40000, 0x40000, 0x40000, 0x40000
    };

    hal::SynchronousFlashInternalStm internalFlash(infra::MakeRange(sectorSizes), flashMemory);

#ifdef UPG_IN_INTERNAL_FLASH
    services::SynchronousFlashRegion upgradePackFlash(internalFlash, 10, 2);
#else
    hal::GpioPinStm spiChipSelect{ hal::Port::A, 15 };
    hal::GpioPinStm spiClock{ hal::Port::C, 10 };
    hal::GpioPinStm spiMiso{ hal::Port::C, 11 };
    hal::GpioPinStm spiMosi{ hal::Port::C, 12 };

    hal::SynchronousSpiMasterStm spi(3, spiClock, spiMiso, spiMosi, CreateSpiConfig());
    services::SynchronousSpiMasterWithChipSelect spiWithChipSelect(spi, spiChipSelect);
    services::SynchronousFlashSpi externalFlash(spiWithChipSelect, CreateFlashConfig());

    services::SynchronousFlashRegion upgradePackFlash(externalFlash, 2, 510);
#endif

    application::DecryptorNone decryptor;
    application::VerifierHashOnly verifier;
    application::UpgradePackLoader loader(upgradePackFlash, "Postmaster");

    if (loader.Load(decryptor, verifier))
    {
        application::ImageUpgraderFlash::WithBlockSize<4096> upgraderInternalFlash("app", decryptor, internalFlash, flashOffset);
        std::array<application::ImageUpgrader*, 1> imageUpgraders{ &upgraderInternalFlash };
        application::PackUpgrader packUpgrader(upgradePackFlash);

        packUpgrader.UpgradeFromImages(imageUpgraders);
    }
}

[[noreturn]] void Jump(const void* isr)
{
    uint8_t* stackAddress = reinterpret_cast<uint8_t* const*>(isr)[0];
    uint8_t* jumpAddress = reinterpret_cast<uint8_t* const*>(isr)[1];

    for (std::size_t i = 0; i < 7; ++i)
    {
        NVIC->ICER[i] = 0xFFFFFFFF;
        NVIC->ICPR[i] = 0xFFFFFFFF;
    }

    __set_MSP(reinterpret_cast<uint32_t>(stackAddress));
    reinterpret_cast<void (*)(void)>(jumpAddress)();

    __builtin_unreachable();
}

unsigned int hse_value = 8000000;

int main()
{
    HAL_Init();

    extern uint8_t _flash_start;
    extern uint8_t _flash_end;
    infra::ConstByteRange flashMemory(&_flash_start, &_flash_end);
    ProcessUpgradePack(flashMemory, ~(reinterpret_cast<uint32_t>(&_flash_start)) + 1);

    extern uint8_t _application_start;
    extern uint8_t _application_end;
    infra::ConstByteRange applicationMemory(&_application_start, &_application_end);
    Jump(applicationMemory.begin());
}
