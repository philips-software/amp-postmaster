#ifndef POSTMASTER_PROGRAMMER_HTTP_PAGE_FIRMWARE_HPP
#define POSTMASTER_PROGRAMMER_HTTP_PAGE_FIRMWARE_HPP

#include "postmaster/programmer/FirmwareReceptor.hpp"
#include "services/network/HttpServer.hpp"

namespace application
{
    class HttpPageFirmware
        : public services::HttpPage
    {
    public:
        HttpPageFirmware(infra::BoundedConstString path);

        void SetReceptor(FirmwareReceptor& newReceptor);
        void ResetReceptor(infra::BoundedConstString reason);

        // Implementation of HttpPage
        virtual bool ServesRequest(const infra::Tokenizer& pathTokens) const override;
        virtual void RequestReceived(services::HttpRequestParser& parser, services::HttpServerConnection& connection) override;
        virtual void DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader) override;
        virtual void Close() override;

    private:
        void ReaderUnreferenced();

    private:
        class HttpResponseNoReceptor
            : public services::SimpleHttpResponse
        {
        public:
            HttpResponseNoReceptor(infra::BoundedConstString reason);
        };

    private:
        infra::BoundedConstString path;
        FirmwareReceptor* receptor = nullptr;
        HttpResponseNoReceptor response{ "Receptor not set" };

        services::HttpServerConnection* connection = nullptr;
        bool active = false;

        infra::SharedPtr<infra::StreamReaderWithRewinding> reader;
        infra::AccessedBySharedPtr access{ [this]()
            {
                ReaderUnreferenced();
            } };
    };
}

#endif
