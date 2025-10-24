#include "generated/Version.h"
#include "hal/generic/SynchronousRandomDataGeneratorGeneric.hpp"
#include "hal/generic/TimerServiceGeneric.hpp"
#include "hal/windows/UartWindows.hpp"
#include "postmaster/instantiations/EchoServer.hpp"
#include "postmaster/instantiations/HttpServer.hpp"
#include "postmaster/instantiations/Mdns.hpp"
#include "postmaster/instantiations/MdnsDiscovery.hpp"
#include "services/network_instantiations/NetworkAdapter.hpp"
#include "services/st_util/FlashOnStBootloaderCommunicator.hpp"
#include "services/st_util/StBootloaderCommunicatorUart.hpp"
#include "services/tracer/TracerOnIoOutputInfrastructure.hpp"

namespace main_
{
    struct Programmer
    {
        Programmer(application::HttpPageFirmware& page)
            : page(page)
        {
            ReInitialize("Constructing");
        }

        ~Programmer()
        {
            page.ResetReceptor("Destructing");
        }

        void ReInitialize(infra::BoundedConstString reason)
        {
            page.ResetReceptor(reason);
            state.Emplace([this]()
                {
                    page.SetReceptor(state->firmwareReceptorToFlash);
                },
                [this](infra::BoundedConstString reason)
                {
                    ReInitialize(reason);
                });
        }

        struct State
        {
            State(const infra::Function<void()>& onInitialized, const infra::Function<void(infra::BoundedConstString reason)>& onError)
                : communicator(serial, onInitialized, onError)
            {}

            hal::UartWindows serial{ "COM11", []()
                {
                    hal::UartWindows::Config config;
                    config.baudRate = CBR_57600;
                    config.parity = hal::UartWindows::Config::Parity::even;
                    return config;
                }() };

            services::StBootloaderCommunicatorUart communicator;
            std::array<uint32_t, 12> sectors{ 0x8000, 0x8000, 0x8000, 0x8000, 0x20000, 0x40000, 0x40000, 0x40000, 0x40000, 0x40000, 0x40000, 0x40000 };
            services::FlashHeterogeneousOnStBootloaderCommunicator communicatorFlash{ sectors, communicator };
            application::FirmwareReceptorToFlash firmwareReceptorToFlash{ communicatorFlash };
        };

        application::HttpPageFirmware& page;
        std::optional<State> state;
    };
}

class ConfigurationStoreInterfaceStub
    : public services::ConfigurationStoreInterface
{
public:
    virtual uint32_t Write() override
    {
        return 0;
    }

    virtual void Unlocked() override
    {}
};

class ResetStub
    : public hal::Reset
{
public:
    void ResetModule(const char* resetReason) override
    {
        std::exit(EXIT_SUCCESS);
    }
};

// clang-format off

class FlashStub
    : public hal::Flash
{
public:
    uint32_t NumberOfSectors() const { return 0; }
    uint32_t SizeOfSector(uint32_t sectorIndex) const { return 0; }
    uint32_t SectorOfAddress(uint32_t address) const { return 0; }
    uint32_t AddressOfSector(uint32_t sectorIndex) const { return 0; }
    void WriteBuffer(infra::ConstByteRange buffer, uint32_t address, infra::Function<void()> onDone) { onDone(); }
    void ReadBuffer(infra::ByteRange buffer, uint32_t address, infra::Function<void()> onDone) { onDone(); }
    void EraseSectors(uint32_t beginIndex, uint32_t endIndex, infra::Function<void()> onDone) { onDone(); }
};

class GpioPinStub
    : public hal::GpioPin
{
public:
    bool Get() const { return false; }
    void Set(bool value) {}
    bool GetOutputLatch() const { return false; }
    void SetAsInput() {}
    bool IsInput() const { return false; }
    void Config(hal::PinConfigType config) {}
    void Config(hal::PinConfigType config, bool startOutputState) {}
    void ResetConfig() {}
    void EnableInterrupt(const infra::Function<void()>& action, hal::InterruptTrigger trigger, hal::InterruptType type = hal::InterruptType::dispatched) {}
    void DisableInterrupt() {}
};

// clang-format on

int main()
{
    static hal::TimerServiceGeneric timerService;
    static hal::SynchronousRandomDataGeneratorGeneric randomDataGenerator;
    static main_::NetworkAdapter networkAdapter;
    static main_::TracerOnIoOutputInfrastructure tracer;

    static ConfigurationStoreInterfaceStub configurationStore;
    static infra::BoundedString::WithStorage<32> hostname{ "postmaster-abc" };
    static infra::BoundedString::WithStorage<64> attributes{ "amp-example" };
    static infra::BoundedString::WithStorage<64> password{ "" };
    static services::ConfigurationStoreAccess<infra::BoundedString> hostnameAccess{ configurationStore, hostname };
    static services::ConfigurationStoreAccess<infra::BoundedString> attributesAccess{ configurationStore, attributes };
    static services::ConfigurationStoreAccess<infra::BoundedString> passwordAccess{ configurationStore, password };

    infra::Creator<hal::SerialCommunication, hal::UartWindows, void(const main_::UartConfig& config)> serialCreator([](std::optional<hal::UartWindows>& value, const main_::UartConfig& config)
        {
            value.emplace("COM13");
        });

    static main_::Mdns mdns{ "richard", networkAdapter.DatagramFactory(), networkAdapter.Multicast(), services::IPv4Address{ 1, 2, 5, 6 }, Postmaster::generated::VERSION, Postmaster::generated::VERSION_FULL, "attributes" };
    static main_::MdnsDiscovery mdnsDiscovery{ networkAdapter.DatagramFactory(), networkAdapter.Multicast() };

    static ResetStub reset;
    static FlashStub flash;
    static GpioPinStub resetTarget;
    static GpioPinStub boot0;
    static application::Authentication authentication{ passwordAccess, randomDataGenerator };
    static main_::HttpServer httpServer{ networkAdapter.ConnectionFactory(), hostnameAccess, attributesAccess, passwordAccess, authentication, mdnsDiscovery.discovery, serialCreator, serialCreator, flash, reset, [](bool open, services::IPAddress address) {}, [](bool receiving) {}, [](bool receiving) {}, resetTarget, boot0 };
    static main_::EchoServer echoServer{ networkAdapter.ConnectionFactory(), serialCreator, 1235 };
    static main_::SingleConnectionLink link(httpServer.server, echoServer.listener);

    networkAdapter.Run();
}
