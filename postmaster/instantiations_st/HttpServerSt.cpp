#include "postmaster/instantiations_st/HttpServerSt.hpp"

namespace main_
{
    HttpServerSt::HttpServerSt(services::ConnectionFactory& connectionFactory, services::ConfigurationStoreAccess<infra::BoundedString>& hostname,
        services::ConfigurationStoreAccess<infra::BoundedString>& attributes, services::ConfigurationStoreAccess<infra::BoundedString>& password,
        application::Authentication& authentication, application::PostmasterDiscovery& postmasterDiscovery,
        UartCreator& uartProgrammerCreator, UartCreator& uartExternalCreator, hal::Flash& upgradeFlash, hal::Reset& reset, const infra::Function<void(bool open, services::IPAddress address)>& reporter, const infra::Function<void(bool receiving)>& receivingTarget, const infra::Function<void(bool receiving)>& receivingSelf)
        : HttpServerSingleConnection(connectionFactory, 80, hostname, attributes, password, authentication, postmasterDiscovery, uartProgrammerCreator, uartExternalCreator, upgradeFlash, reset, reporter, receivingTarget, receivingSelf, resetTarget, boot0)
    {}
}
