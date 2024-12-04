#include "postmaster/instantiations/Configuration.hpp"
#include "infra/stream/StringOutputStream.hpp"
#include "mbedtls/sha256.h"

namespace main_
{
    Configuration::Configuration(hal::Flash& flash0, hal::Flash& flash1, infra::ConstByteRange id, const infra::Function<void()>& onRecovered, services::Tracer& tracer)
        : id(id)
        , onRecovered(onRecovered)
        , store(flash0, flash1, sha256, [this, &tracer](bool success)
              {
                  tracer.Trace() << "Configuration load " << (success ? "successful" : "failed");
                  if (!success)
                  {
                      tracer.Trace() << "Loading default configuration";
                      LoadDefaultConfiguration(store.Configuration());
                      store.Write();
                  }

                  tracer.Trace() << "Hostname: " << store.Configuration().hostname;

                  this->onRecovered();
              })
    {}

    void Configuration::LoadDefaultConfiguration(postmaster_configuration::Configuration& configuration)
    {
        configuration.hostname = DeviceHostname();
    }

    hal::MacAddress Configuration::DeviceMacAddress() const
    {
        std::array<uint8_t, 32> hashedDeviceId;
        int r = mbedtls_sha256(reinterpret_cast<const unsigned char*>(id.begin()), id.size(), reinterpret_cast<unsigned char*>(hashedDeviceId.data()), 0);
        assert(r == 0);

        hal::MacAddress result;
        infra::Copy(infra::Head(infra::MakeRange(hashedDeviceId), result.size()), infra::MakeRange(result));
        result.front() &= 0xfe; // unicast
        result.front() |= 0x02; // locally administered

        return result;
    }

    infra::BoundedString::WithStorage<32> Configuration::DeviceHostname() const
    {
        auto macAddress = DeviceMacAddress();
        infra::StringOutputStream::WithStorage<32> hostname;
        hostname << "postmaster-" << infra::hex << macAddress[0] << macAddress[1] << macAddress[2] << macAddress[3] << macAddress[4] << macAddress[5];
        return hostname.Storage();
    }
}
