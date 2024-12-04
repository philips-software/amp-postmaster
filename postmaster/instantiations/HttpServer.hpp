#ifndef POSTMASTER_HTTP_SERVER_HPP
#define POSTMASTER_HTTP_SERVER_HPP

#include "postmaster/instantiations/HttpPageDiscovery.hpp"
#include "postmaster/instantiations/HttpServerFrontEnd.hpp"
#include "postmaster/instantiations/SelfProgrammer.hpp"
#include "postmaster/instantiations/TargetProgrammer.hpp"
#include "postmaster/instantiations/TargetUart.hpp"
#include "postmaster/instantiations/TargetUartEcho.hpp"

namespace main_
{
    struct HttpServer
        : public HttpServerFrontEnd
    {
        HttpServer(services::ConnectionFactory& connectionFactory, services::ConfigurationStoreAccess<infra::BoundedString>& hostname,
            services::ConfigurationStoreAccess<infra::BoundedString>& attributes, services::ConfigurationStoreAccess<infra::BoundedString>& password,
            application::Authentication& authentication, application::PostmasterDiscovery& postmasterDiscovery,
            const infra::Function<void(bool open, services::IPAddress address)>& reporter, const infra::Function<void(bool receiving)>& receivingTarget, const infra::Function<void(bool receiving)>& receivingSelf);

        application::HttpPageDiscovery discovery;
    };

    struct HttpServerSingleConnection
        : public HttpServer
    {
        HttpServerSingleConnection(services::ConnectionFactory& connectionFactory, services::ConfigurationStoreAccess<infra::BoundedString>& hostname,
            services::ConfigurationStoreAccess<infra::BoundedString>& attributes, services::ConfigurationStoreAccess<infra::BoundedString>& password,
            application::Authentication& authentication, application::PostmasterDiscovery& postmasterDiscovery,
            UartCreator& uartProgrammerCreator, UartCreator& uartExternalCreator, hal::Flash& upgradeFlash, hal::Reset& reset, const infra::Function<void(bool open, services::IPAddress address)>& reporter, const infra::Function<void(bool receiving)>& receivingTarget, const infra::Function<void(bool receiving)>& receivingSelf, hal::GpioPin& resetTarget, hal::GpioPin& boot0);

        UartCreator& uartProgrammerCreator;
        UartCreator& uartExternalCreator;

        application::AuthenticatedHttpPage::WithPage<application::HttpPageFirmware> selfFirmwarePage;
        main_::SelfProgrammer selfProgrammer;

        application::AuthenticatedHttpPage::WithPage<application::HttpPageFirmware> targetFirmwarePage;
        main_::TargetProgrammer targetProgrammer;

        main_::TargetUart targetUartProgrammer;
        main_::TargetUart targetUartExternal;

        main_::TargetUartEcho targetUartEchoProgrammer;
        main_::TargetUartEcho targetUartEchoExternal;
    };
}

#endif
