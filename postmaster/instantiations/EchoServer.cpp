#include "postmaster/instantiations/EchoServer.hpp"

namespace main_
{
    EchoServer::EchoServer(services::ConnectionFactory& connectionFactory, UartCreator& serialCreator, uint16_t port)
        : serialCreator(serialCreator)
        , listener(connectionFactory, port, { bridgeCreator })
    {}

    EchoServer::Bridge::Bridge(UartCreator& serialCreator)
        : serial(serialCreator, UartConfig{})
    {}

    EchoServer::Bridge::operator services::ConnectionObserver&()
    {
        return echoConnection;
    }

    EchoServer::Bridge::operator const services::ConnectionObserver&() const
    {
        return echoConnection;
    }

    SingleConnectionLink::SingleConnectionLink(application::ReportingHttpServer& listener1, services::SingleConnectionListener& listener2)
        : listener1(listener1)
        , listener2(listener2)
    {
        listener1.SetNewConnectionStrategy(*this);
        listener2.SetNewConnectionStrategy(*this);
    }

    void SingleConnectionLink::StopCurrentConnection(void* listener)
    {
        if (listener == &listener1)
            listener1RequestedNewConnection = true;
        if (listener == &listener2)
            listener2RequestedNewConnection = true;

        numStopped = 0;
        listener1.StopCurrentConnection(&listener1);
        listener2.StopCurrentConnection(&listener2);
    }

    void SingleConnectionLink::StartNewConnection()
    {
        ++numStopped;

        if (numStopped == 2)
        {
            if (listener1RequestedNewConnection)
            {
                listener1RequestedNewConnection = false;
                listener1.StartNewConnection();

                if (listener2RequestedNewConnection)
                    StopCurrentConnection(&listener1);
            }
            else if (listener2RequestedNewConnection)
            {
                listener2RequestedNewConnection = false;
                listener2.StartNewConnection();
            }
        }
    }

}
