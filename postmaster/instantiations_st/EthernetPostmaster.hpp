#ifndef POSTMASTER_ETHERNET_POSTMASTER_HPP
#define POSTMASTER_ETHERNET_POSTMASTER_HPP

#include "hal_st/stm32fxxx/ResetStm.hpp"
#include "hal_st/synchronous_stm32fxxx/SynchronousRandomDataGeneratorStm.hpp"
#include "hal_st_lwip/instantiations_lwip/Ethernet.hpp"
#include "postmaster/instantiations/Configuration.hpp"
#include "postmaster/instantiations/ViewStatus.hpp"
#include "postmaster/instantiations_st/NetworkConnected.hpp"

namespace main_
{
    struct EthernetPostmaster
    {
        EthernetPostmaster(infra::MemoryRange<const std::pair<hal::Port, uint8_t>> ethernetPins, Configuration& configuration, hal::Flash& upgradePack, UartCreator& uartProgrammerCreator, UartCreator& uartExternalCreator, application::ViewStatus& viewStatus)
            : upgradePack(upgradePack)
            , uartProgrammerCreator(uartProgrammerCreator)
            , uartExternalCreator(uartExternalCreator)
            , viewStatus(viewStatus)
            , hostname{ configuration.store, configuration.store.Configuration().hostname }
            , attributes{ configuration.store, configuration.store.Configuration().attributes }
            , password{ configuration.store, configuration.store.Configuration().password }
            , authentication{ password, randomDataGenerator }
            , networkCreator([this](std::optional<main_::NetworkConnected>& value, services::LightweightIp& lightweightIp)
                  {
                      value.emplace(lightweightIp, hostname, attributes, password, authentication, this->upgradePack, this->uartProgrammerCreator, this->uartExternalCreator, this->reset, this->viewStatus);
                  })
            , ethernet{ ethernetPins, configuration.DeviceMacAddress(), configuration.store.Configuration().hostname, randomDataGenerator, networkCreator }
        {}

        hal::Flash& upgradePack;
        UartCreator& uartProgrammerCreator;
        UartCreator& uartExternalCreator;
        application::ViewStatus& viewStatus;

        hal::ResetStm reset;
        hal::SynchronousRandomDataGeneratorStm randomDataGenerator;

        services::ConfigurationStoreAccess<infra::BoundedString> hostname;
        services::ConfigurationStoreAccess<infra::BoundedString> attributes;
        services::ConfigurationStoreAccess<infra::BoundedString> password;
        application::Authentication authentication;
        infra::Creator<services::Stoppable, main_::NetworkConnected, void(services::LightweightIp& lightweightIp)> networkCreator;

        main_::Ethernet<3, 0, 4> ethernet;
    };
}

#endif
