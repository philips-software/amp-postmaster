#ifndef POSTMASTER_NETWORK_CONNECTED_HPP
#define POSTMASTER_NETWORK_CONNECTED_HPP

#include "generated/Version.h"
#include "lwip/lwip_cpp/LightweightIp.hpp"
#include "postmaster/instantiations/EchoServer.hpp"
#include "postmaster/instantiations/Mdns.hpp"
#include "postmaster/instantiations/MdnsDiscovery.hpp"
#include "postmaster/instantiations/ViewNetworkStatus.hpp"
#include "postmaster/instantiations/ViewStatus.hpp"
#include "postmaster/instantiations_st/HttpServerSt.hpp"

namespace main_
{
    struct NetworkConnected
        : public services::Stoppable
    {
        NetworkConnected(services::LightweightIp& lightweightIp, services::ConfigurationStoreAccess<infra::BoundedString>& hostname,
            services::ConfigurationStoreAccess<infra::BoundedString>& attributes, services::ConfigurationStoreAccess<infra::BoundedString>& password,
            application::Authentication& authentication,
            hal::Flash& upgradePack, UartCreator& uartProgrammerCreator, UartCreator& uartExternalCreator, hal::Reset& reset, application::ViewStatus& viewStatus)
            : mdns{ *hostname, lightweightIp, lightweightIp, lightweightIp.GetIPv4Address(), Postmaster::generated::VERSION, Postmaster::generated::VERSION_FULL, *attributes }
            , mdnsDiscovery{ lightweightIp, lightweightIp }
            // , httpServer{lightweightIp, 80, hostname, attributes, password, authentication, mdnsDiscovery.discovery,[&viewStatus](bool open, services::IPAddress address)
            //     {
            //         viewStatus.SetConnectionOpen(open, address);
            //     },
            //     [&viewStatus](bool receiving)
            //     {
            //         viewStatus.SetReceivingTarget(receiving);
            //     },
            //     [&viewStatus](bool receiving)
            //     {
            //         viewStatus.SetReceivingSelf(receiving);
            //     } }
            , httpServerSingleConnection{ lightweightIp, hostname, attributes, password, authentication, mdnsDiscovery.discovery, uartProgrammerCreator, uartExternalCreator, upgradePack, reset, [&viewStatus](bool open, services::IPAddress address)
                {
                    viewStatus.SetConnectionOpen(open, address);
                },
                [&viewStatus](bool receiving)
                {
                    viewStatus.SetReceivingTarget(receiving);
                },
                [&viewStatus](bool receiving)
                {
                    viewStatus.SetReceivingSelf(receiving);
                } }
            , echoServer{ lightweightIp, uartExternalCreator, 1235 }
            , traceForwarder(lightweightIp)
        {}

        void Stop(const infra::Function<void()>& onDone) override
        {
            this->onDone = onDone;
            httpServerSingleConnection.Stop([this]()
                {
                    //httpServer.Stop(this->onDone);
                    this->onDone();
                });
        }

        main_::Mdns mdns;
        main_::MdnsDiscovery mdnsDiscovery;
        //main_::HttpServer::WithConnections<5> httpServer;
        main_::HttpServerSt httpServerSingleConnection;
        main_::EchoServer echoServer;
        main_::SingleConnectionLink link{ httpServerSingleConnection.server, echoServer.listener };
        main_::TraceForwarderSt traceForwarder;
        infra::Function<void()> onDone;
    };
}

#endif
