#ifndef POSTMASTER_TARGET_UART_CONNECTION_HPP
#define POSTMASTER_TARGET_UART_CONNECTION_HPP

#include "hal/interfaces/SerialCommunication.hpp"
#include "infra/event/QueueForOneReaderOneIrqWriter.hpp"
#include "services/network/Connection.hpp"

namespace application
{
    class TargetUartConnection
        : public services::ConnectionObserver
    {
    public:
        template<std::size_t Size>
        using WithStorage = infra::WithStorage<TargetUartConnection, std::array<uint8_t, Size>>;

        TargetUartConnection(infra::ByteRange buffer, hal::SerialCommunication& serial);
        ~TargetUartConnection();

        virtual void SendStreamAvailable(infra::SharedPtr<infra::StreamWriter>&& streamWriter) override;
        virtual void DataReceived() override;

    private:
        void ReceivedSerialData();

    private:
        infra::QueueForOneReaderOneIrqWriter<uint8_t> queue;
        hal::SerialCommunication& serial;
        infra::SharedPtr<infra::StreamReaderWithRewinding> receiveStream;
        bool streamRequested = false;
    };
}

#endif
