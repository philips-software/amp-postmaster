#include "postmaster/programmer/TargetUartConnection.hpp"

namespace application
{
    TargetUartConnection::TargetUartConnection(infra::ByteRange buffer, hal::SerialCommunication& serial)
        : queue{ buffer, [this]()
            {
                ReceivedSerialData();
            } }
        , serial(serial)
    {
        serial.ReceiveData([this](infra::ConstByteRange data)
            {
                data.shrink_from_back_to(queue.EmptySize() - queue.Size());
                queue.AddFromInterrupt(data);
            });
    }

    TargetUartConnection::~TargetUartConnection()
    {
        serial.ReceiveData(nullptr);
    }

    void TargetUartConnection::SendStreamAvailable(infra::SharedPtr<infra::StreamWriter>&& streamWriter)
    {
        streamRequested = false;

        infra::DataOutputStream::WithErrorPolicy stream(*streamWriter);
        while (stream.Available() != 0 && !queue.Empty())
        {
            auto data = queue.ContiguousRange(0);
            queue.Consume(data.size());
            data.shrink_from_back_to(stream.Available());
            stream << data;
        }

        streamWriter = nullptr;
        ReceivedSerialData();
    }

    void TargetUartConnection::DataReceived()
    {
        if (receiveStream == nullptr && IsAttached())
        {
            receiveStream = Subject().ReceiveStream();
            if (!receiveStream->Empty())
                serial.SendData(receiveStream->ExtractContiguousRange(std::numeric_limits<std::size_t>::max()), [this]()
                    {
                        Subject().AckReceived();

                        infra::WeakPtr self = Subject().ObserverPtr();
                        receiveStream = nullptr;

                        if (self.lock())
                            DataReceived();
                    });
            else
                receiveStream = nullptr;
        }
    }

    void TargetUartConnection::ReceivedSerialData()
    {
        if (!queue.Empty() && !streamRequested)
        {
            streamRequested = true;
            Subject().RequestSendStream(Subject().MaxSendStreamSize());
        }
    }
}
