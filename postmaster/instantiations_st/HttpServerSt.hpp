#ifndef POSTMASTER_HTTP_SERVER_ST_HPP
#define POSTMASTER_HTTP_SERVER_ST_HPP

#include "hal/interfaces/SerialCommunication.hpp"
#include "hal_st/stm32fxxx/GpioStm.hpp"
#include "hal_st/stm32fxxx/UartStm.hpp"
#include "infra/util/SharedPtr.hpp"
#include "postmaster/instantiations/HttpServer.hpp"
#include "services/network/Connection.hpp"

namespace main_
{
    struct HttpServerSt
        : public HttpServer
    {
        HttpServerSt(services::ConnectionFactory& connectionFactory, services::ConfigurationStoreAccess<infra::BoundedString>& hostname,
            services::ConfigurationStoreAccess<infra::BoundedString>& attributes, services::ConfigurationStoreAccess<infra::BoundedString>& password,
            application::Authentication& authentication, application::PostmasterDiscovery& postmasterDiscovery,
            UartCreator& uartProgrammerCreator, UartCreator& uartExternalCreator, hal::Flash& upgradeFlash, hal::Reset& reset, const infra::Function<void(bool open, services::IPAddress address)>& reporter, const infra::Function<void(bool receiving)>& receivingTarget, const infra::Function<void(bool receiving)>& receivingSelf);

        hal::GpioPinStm resetTarget{ hal::Port::B, 4 };
        hal::GpioPinStm boot0{ hal::Port::B, 5 };
    };

    class TraceForwarder
        : private services::ServerConnectionObserverFactory
        , private services::ConnectionObserver
        , private hal::BufferedSerialCommunicationObserver
    {
    public:
        TraceForwarder(services::ConnectionFactory& connectionFactory, hal::BufferedSerialCommunication& traceUart)
            : hal::BufferedSerialCommunicationObserver(traceUart)
            , listener(connectionFactory.Listen(1023, *this))
        {}

    private:
        // Implementation of ServerConnectionObserverFactory
        void ConnectionAccepted(infra::AutoResetFunction<void(infra::SharedPtr<services::ConnectionObserver> connectionObserver)>&& createdObserver, services::IPAddress address) override
        {
            waitingConnection = std::move(createdObserver);

            if (services::ConnectionObserver::IsAttached())
                services::ConnectionObserver::Close();
            
            TryAcceptConnection();
        }

    private:
        // Implementation of ConnectionObserver
        void SendStreamAvailable(infra::SharedPtr<infra::StreamWriter>&& writer) override
        {
            requestingStream = false;

            infra::StreamErrorPolicy errorPolicy;
            auto& reader = hal::BufferedSerialCommunicationObserver::Subject().Reader();

            while (!reader.Empty() && !writer->Empty())
            {
                auto range = reader.ExtractContiguousRange(writer->Available());
                writer->Insert(range, errorPolicy);
            }

            hal::BufferedSerialCommunicationObserver::Subject().AckReceived();

            DataReceived(); // Trigger a new RequestSendStream if necessary
        }

        // Implementation of both ConnectionObserver and BufferedSerialCommunicationObserver; only the latter data is processed
        void DataReceived() override
        {
            if (!requestingStream && !hal::BufferedSerialCommunicationObserver::Subject().Reader().Empty() && services::ConnectionObserver::IsAttached())
            {
                requestingStream = true;
                services::ConnectionObserver::Subject().RequestSendStream(services::ConnectionObserver::Subject().MaxSendStreamSize());
            }
        }        

    private:
        void TryAcceptConnection()
        {
            requestingStream = false;
            if (waitingConnection != nullptr && !access.Referenced())
                waitingConnection(access.MakeShared(static_cast<services::ConnectionObserver&>(*this)));
        }

    private:
        infra::SharedPtr<void> listener;

        infra::AccessedBySharedPtr access{[this]()
            {
                TryAcceptConnection();
            }};
        infra::AutoResetFunction<void(infra::SharedPtr<services::ConnectionObserver> connectionObserver)> waitingConnection;

        bool requestingStream = false;
    };

    struct TraceForwarderSt
    {
        TraceForwarderSt(services::ConnectionFactory& connectionFactory)
            : forwarder(connectionFactory, bufferedTraceUart)
        {}

        hal::GpioPinStm traceRx{ hal::Port::C, 7 };
        hal::UartStm traceUart{ 6, hal::dummyPinStm, traceRx };
        hal::BufferedSerialCommunicationOnUnbuffered::WithStorage<1024> bufferedTraceUart{ traceUart };

        TraceForwarder forwarder;
    };
}

#endif
