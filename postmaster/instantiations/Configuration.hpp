#ifndef POSTMASTER_CONFIGURATION_HPP
#define POSTMASTER_CONFIGURATION_HPP

#include "generated/echo/PostmasterConfiguration.pb.hpp"
#include "hal/interfaces/MacAddress.hpp"
#include "services/tracer/Tracer.hpp"
#include "services/util/ConfigurationStore.hpp"
#include "services/util/Sha256MbedTls.hpp"

namespace main_
{
    struct Configuration
    {
        Configuration(hal::Flash& flash0, hal::Flash& flash1, infra::ConstByteRange id, const infra::Function<void()>& onRecovered, services::Tracer& tracer);

        void LoadDefaultConfiguration(postmaster_configuration::Configuration& configuration);
        hal::MacAddress DeviceMacAddress() const;
        infra::BoundedString::WithStorage<32> DeviceHostname() const;

        infra::ConstByteRange id;
        infra::AutoResetFunction<void()> onRecovered;
        services::Sha256MbedTls sha256;
        services::ConfigurationStoreImpl<postmaster_configuration::Configuration>::WithBlobs<> store;
    };
}

#endif
