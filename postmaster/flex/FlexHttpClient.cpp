#include "postmaster/flex/FlexHttpClient.hpp"

namespace application
{
    FlexHttpClient::FlexHttpClient(infra::BoundedString url, uint16_t port, services::HttpClientConnector& connector, const std::vector<uint8_t>& firmware, services::HttpClientWebSocketInitiation& webSocketInitiation, services::Tracer& tracer)
        : HttpClientBasic(url, port, connector, std::chrono::minutes(10), services::noAutoConnect)
        , firmware(firmware)
        , webSocketInitiation(webSocketInitiation)
        , tracer(tracer)
    {
        if (!firmware.empty())
            Connect();
        else
            connector.Connect(webSocketInitiation);
    }

    void FlexHttpClient::Attached()
    {
        HttpClientBasic::Attached();

        tracer.Trace() << "Attached";
        infra::BoundedString path = Path();
        path += "/firmware/target";

        httpClient = &Subject();
        httpClient->Post(path, infra::ByteRangeAsString(infra::MakeRange(firmware)), Headers());
    }

    void FlexHttpClient::Detaching()
    {
        detached = true;
    }

    void FlexHttpClient::StatusAvailable(services::HttpStatusCode statusCode)
    {
        HttpClientBasic::StatusAvailable(statusCode);

        tracer.Trace() << "Status: " << statusCode;
    }

    void FlexHttpClient::HeaderAvailable(services::HttpHeader header)
    {
        tracer.Trace() << "Header: " << header;
    }

    void FlexHttpClient::BodyAvailable(infra::SharedPtr<infra::StreamReader>&& reader)
    {
        infra::DataInputStream::WithErrorPolicy stream(*reader, infra::noFail);

        while (!stream.Empty())
            tracer.Trace() << infra::ByteRangeAsString(stream.ContiguousRange());
    }

    void FlexHttpClient::BodyComplete()
    {
        inBodyComplete = true;
        HttpClientBasic::BodyComplete();
        inBodyComplete = false;
    }

    void FlexHttpClient::Done()
    {
        tracer.Trace() << "Done";
    }

    void FlexHttpClient::Error(bool intermittentFailure)
    {
        tracer.Trace() << "Error";

        if (!detached && httpClient != nullptr)
            httpClient->CloseConnection();
    }

    void FlexHttpClient::CloseConnection()
    {
        Subject().Detach();

        if (inBodyComplete)
            httpClient->Attach(infra::UnOwnedSharedPtr(webSocketInitiation));
    }
}
