#ifndef POSTMASTER_FLEX_HTTP_CLIENT_HPP
#define POSTMASTER_FLEX_HTTP_CLIENT_HPP

#include "services/network/HttpClientBasic.hpp"
#include "services/network/WebSocketClientConnectionObserver.hpp"
#include "services/tracer/Tracer.hpp"
#include <vector>

namespace application
{
    class FlexHttpClient
        : private services::HttpClientBasic
    {
    public:
        FlexHttpClient(infra::BoundedString url, uint16_t port, services::HttpClientConnector& connector, const std::vector<uint8_t>& firmware, services::HttpClientWebSocketInitiation& webSocketInitiation, services::Tracer& tracer);

    protected:
        // Implementation of HttpClientBasic
        void Attached() override;
        void Detaching() override;
        void StatusAvailable(services::HttpStatusCode statusCode) override;
        void HeaderAvailable(services::HttpHeader header) override;
        void BodyAvailable(infra::SharedPtr<infra::StreamReader>&& reader);
        void BodyComplete() override;
        void Done() override;
        void Error(bool intermittentFailure) override;
        void CloseConnection() override;

    private:
        std::vector<uint8_t> firmware;
        services::HttpClientWebSocketInitiation& webSocketInitiation;
        services::Tracer& tracer;

        services::HttpClient* httpClient = nullptr;
        bool detached = false;
        bool inBodyComplete = false;
    };
}

#endif
