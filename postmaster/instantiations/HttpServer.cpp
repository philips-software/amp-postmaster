#include "postmaster/instantiations/HttpServer.hpp"

namespace main_
{
    HttpServer::HttpServer(services::ConnectionFactory& connectionFactory, services::ConfigurationStoreAccess<infra::BoundedString>& hostname,
        services::ConfigurationStoreAccess<infra::BoundedString>& attributes, services::ConfigurationStoreAccess<infra::BoundedString>& password,
        application::Authentication& authentication, application::PostmasterDiscovery& postmasterDiscovery,
        const infra::Function<void(bool open, services::IPAddress address)>& reporter, const infra::Function<void(bool receiving)>& receivingTarget, const infra::Function<void(bool receiving)>& receivingSelf)
        : HttpServerFrontEnd(connectionFactory, hostname, attributes, password, authentication, reporter, receivingTarget, receivingSelf)
        , discovery("discovery", postmasterDiscovery)
    {
        server.AddPage(discovery);
    }

    HttpServerSingleConnection::HttpServerSingleConnection(services::ConnectionFactory& connectionFactory, services::ConfigurationStoreAccess<infra::BoundedString>& hostname,
        services::ConfigurationStoreAccess<infra::BoundedString>& attributes, services::ConfigurationStoreAccess<infra::BoundedString>& password,
        application::Authentication& authentication, application::PostmasterDiscovery& postmasterDiscovery,
        UartCreator& uartProgrammerCreator, UartCreator& uartExternalCreator, hal::Flash& upgradeFlash, hal::Reset& reset, const infra::Function<void(bool open, services::IPAddress address)>& reporter, const infra::Function<void(bool receiving)>& receivingTarget, const infra::Function<void(bool receiving)>& receivingSelf, hal::GpioPin& resetTarget, hal::GpioPin& boot0)
        : HttpServer(connectionFactory, hostname, attributes, password, authentication, postmasterDiscovery, reporter, receivingTarget, receivingSelf)
        , uartProgrammerCreator(uartProgrammerCreator)
        , uartExternalCreator(uartExternalCreator)
        , selfFirmwarePage{ authentication, "firmware/self" }
        , selfProgrammer{ selfFirmwarePage.page, upgradeFlash, reset, receivingSelf }
        , targetFirmwarePage{ authentication, "firmware/target" }
        , targetProgrammer{ uartProgrammerCreator, targetFirmwarePage.page, resetTarget, boot0, receivingTarget }
        , targetUartProgrammer{ authentication, "target/uart/programmer", uartProgrammerCreator }
        , targetUartExternal{ authentication, "target/uart/external", uartExternalCreator }
        , targetUartEchoProgrammer{ authentication, "target/echo/programmer", uartProgrammerCreator }
        , targetUartEchoExternal{ authentication, "target/echo/external", uartExternalCreator }
    {
        server.AddPage(selfFirmwarePage);
        server.AddPage(targetFirmwarePage);
        server.AddPage(targetUartProgrammer.page);
        server.AddPage(targetUartExternal.page);
        server.AddPage(targetUartEchoProgrammer.page);
        server.AddPage(targetUartEchoExternal.page);
    }
}
