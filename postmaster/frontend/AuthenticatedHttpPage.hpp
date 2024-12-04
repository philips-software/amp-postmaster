#ifndef POSTMASTER_AUTHENTICATED_HTTP_PAGE_HPP
#define POSTMASTER_AUTHENTICATED_HTTP_PAGE_HPP

#include "hal/synchronous_interfaces/SynchronousRandomDataGenerator.hpp"
#include "infra/stream/StringInputStream.hpp"
#include "services/network/HttpServer.hpp"
#include "services/util/ConfigurationStore.hpp"
#include "services/util/Sha256MbedTls.hpp"

namespace application
{
    class Authentication
    {
    public:
        struct DigestData
        {
            infra::BoundedConstString username;
            infra::BoundedConstString realm;
            infra::BoundedConstString nonce;
            infra::BoundedConstString uri;
            infra::BoundedConstString qop;
            infra::BoundedConstString nc;
            infra::BoundedConstString cnonce;
            infra::BoundedConstString response;
        };

    public:
        Authentication(services::ConfigurationStoreAccess<infra::BoundedString> password, hal::SynchronousRandomDataGenerator& randomDataGenerator);

        void GenerateNonce();
        bool Enabled() const;
        bool AuthorizedPassword(infra::BoundedConstString password) const;
        bool Authorized(const DigestData& digestData, infra::BoundedConstString method);
        infra::ConstByteRange Nonce() const;

    private:
        services::ConfigurationStoreAccess<infra::BoundedString> password;
        hal::SynchronousRandomDataGenerator& randomDataGenerator;

        uint32_t nc = 0;
        std::array<uint8_t, 16> nonce;

        const services::Sha256MbedTls sha;
    };

    class AuthenticatedHttpPage
        : public services::HttpPage
        , public services::HttpResponse
    {
    public:
        template<class Page>
        struct WithPage;

        AuthenticatedHttpPage(Authentication& authentication, services::HttpPage& page);

        // Implementation of HttpPage
        bool ServesRequest(const infra::Tokenizer& pathTokens) const override;
        void RequestReceived(services::HttpRequestParser& parser, services::HttpServerConnection& connection) override;
        void DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader) override;
        void Close() override;

        // Implementation of HttpResponse
        infra::BoundedConstString Status() const override;
        void WriteBody(infra::TextOutputStream& stream) const override;
        infra::BoundedConstString ContentType() const override;
        void AddHeaders(services::HttpResponseHeaderBuilder& builder) const override;

    private:
        infra::BoundedConstString PasswordFromQuery(infra::BoundedConstString queryString);
        void RequestReceivedWithAuthorization(services::HttpRequestParser& parser, services::HttpServerConnection& connection, infra::BoundedConstString authorization);
        void RequestReceivedWithData(services::HttpRequestParser& parser, services::HttpServerConnection& connection, const Authentication::DigestData& digestData);
        void ReceivedAuthorizedRequest(services::HttpRequestParser& parser, services::HttpServerConnection& connection);
        void SendUnauthorizedResponse(services::HttpServerConnection& connection);

    private:
        Authentication& authentication;
        services::HttpPage& page;
        bool authorized = false;
    };

    template<class Page>
    struct AuthenticatedHttpPage::WithPage
        : AuthenticatedHttpPage
    {
        template<class... Args>
        WithPage(Authentication& authentication, Args&&... args)
            : AuthenticatedHttpPage(authentication, page)
            , page(std::forward<Args>(args)...)
        {}

        Page page;
    };

    template<std::size_t Size>
    std::array<uint8_t, Size> FromHex(infra::BoundedConstString from)
    {
        std::array<uint8_t, Size> result;
        infra::StringInputStream reader(from, infra::noFail);
        reader >> infra::FromHex(result);
        return result;
    }
}

#endif
