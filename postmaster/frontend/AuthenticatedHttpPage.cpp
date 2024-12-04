#include "postmaster/frontend/AuthenticatedHttpPage.hpp"
#include "infra/stream/StringInputStream.hpp"
#include "infra/stream/StringOutputStream.hpp"
#include "postmaster/frontend/CommaSeparatedKeyValueListParser.hpp"
#include "services/network/HttpErrors.hpp"

namespace application
{
    Authentication::Authentication(services::ConfigurationStoreAccess<infra::BoundedString> password, hal::SynchronousRandomDataGenerator& randomDataGenerator)
        : password(password)
        , randomDataGenerator(randomDataGenerator)
    {
        GenerateNonce();
    }

    void Authentication::GenerateNonce()
    {
        nc = 0;
        randomDataGenerator.GenerateRandomData(nonce);
    }

    bool Authentication::Enabled() const
    {
        return !password->empty();
    }

    bool Authentication::AuthorizedPassword(infra::BoundedConstString password) const
    {
        return password == *this->password;
    }

    bool Authentication::Authorized(const DigestData& digestData, infra::BoundedConstString method)
    {
        infra::StringInputStream ncStream(digestData.nc, infra::noFail);
        uint32_t digestNc;
        ncStream >> infra::hex >> digestNc;
        if (digestNc <= nc)
            return false;
        nc = digestNc;

        infra::StringOutputStream::WithStorage<256> input;
        input << digestData.username << ":postmaster:" << *password;
        auto hash1 = sha.Calculate(infra::StringAsByteRange(input.Storage()));

        input.Storage().clear();
        input << method << ":" << digestData.uri;
        auto hash2 = sha.Calculate(infra::StringAsByteRange(input.Storage()));

        auto nonce = FromHex<16>(digestData.nonce);

        input.Storage().clear();
        input << infra::AsHex(hash1) << ":" << infra::AsHex(nonce) << ":" << digestData.nc << ":" << digestData.cnonce << ":auth:" << infra::AsHex(hash2);
        auto computedResponse = sha.Calculate(infra::StringAsByteRange(input.Storage()));

        auto response = FromHex<32>(digestData.response);

        return infra::ContentsEqual(infra::MakeRange(response), infra::MakeRange(computedResponse));
    }

    infra::ConstByteRange Authentication::Nonce() const
    {
        return nonce;
    }

    AuthenticatedHttpPage::AuthenticatedHttpPage(Authentication& authentication, services::HttpPage& page)
        : authentication(authentication)
        , page(page)
    {}

    bool AuthenticatedHttpPage::ServesRequest(const infra::Tokenizer& pathTokens) const
    {
        return page.ServesRequest(pathTokens);
    }

    void AuthenticatedHttpPage::RequestReceived(services::HttpRequestParser& parser, services::HttpServerConnection& connection)
    {
        infra::BoundedConstString authorization = parser.Header("Authorization");

        authorized = false;

        if (!authentication.Enabled())
            ReceivedAuthorizedRequest(parser, connection);
        else if (authentication.AuthorizedPassword(PasswordFromQuery(parser.Query())))
            ReceivedAuthorizedRequest(parser, connection);
        else if (authorization.empty())
            SendUnauthorizedResponse(connection);
        else
            RequestReceivedWithAuthorization(parser, connection, authorization);
    }

    void AuthenticatedHttpPage::DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader)
    {
        if (authorized)
            page.DataReceived(std::move(reader));
    }

    void AuthenticatedHttpPage::Close()
    {
        if (authorized)
            page.Close();
    }

    infra::BoundedConstString AuthenticatedHttpPage::Status() const
    {
        return "401 Unauthorized";
    }

    void AuthenticatedHttpPage::WriteBody(infra::TextOutputStream& stream) const
    {}

    infra::BoundedConstString AuthenticatedHttpPage::ContentType() const
    {
        return "text/plain";
    }

    void AuthenticatedHttpPage::AddHeaders(services::HttpResponseHeaderBuilder& builder) const
    {
        infra::StringOutputStream::WithStorage<256> challenge;
        challenge << R"(Digest realm="postmaster", qop="auth", algorithm=SHA-256, nonce=")" << infra::AsHex(authentication.Nonce()) << R"(")";
        builder.AddHeader("WWW-Authenticate", challenge.Storage());
    }

    infra::BoundedConstString AuthenticatedHttpPage::PasswordFromQuery(infra::BoundedConstString queryString)
    {
        infra::Tokenizer queries(queryString, '&');

        for (auto i = 0; i != queries.Size(); ++i)
        {
            infra::Tokenizer queryTokens(queries.Token(i), '=');
            if (queryTokens.Size() == 2 && queryTokens.Token(0) == "p")
                return queryTokens.Token(1);
        }

        return {};
    }

    void AuthenticatedHttpPage::RequestReceivedWithAuthorization(services::HttpRequestParser& parser, services::HttpServerConnection& connection, infra::BoundedConstString authorization)
    {
        static const infra::BoundedConstString scheme = "Digest ";

        if (authorization.find(scheme) == 0)
        {
            auto keyValues = authorization.substr(scheme.size());
            Authentication::DigestData digestData;
            CommaSeparatedKeyValueListParser keyValueParser(keyValues, [&digestData](infra::BoundedConstString key, infra::BoundedConstString value)
                {
                    if (key == "username")
                        digestData.username = value;
                    if (key == "realm")
                        digestData.realm = value;
                    if (key == "nonce")
                        digestData.nonce = value;
                    if (key == "uri")
                        digestData.uri = value;
                    if (key == "qop")
                        digestData.qop = value;
                    if (key == "nc")
                        digestData.nc = value;
                    if (key == "cnonce")
                        digestData.cnonce = value;
                    if (key == "response")
                        digestData.response = value;
                });

            if (keyValueParser.Valid())
            {
                RequestReceivedWithData(parser, connection, digestData);
                return;
            }
        }

        connection.SendResponse(services::HttpResponseBadRequest::Instance());
    }

    void AuthenticatedHttpPage::RequestReceivedWithData(services::HttpRequestParser& parser, services::HttpServerConnection& connection, const Authentication::DigestData& digestData)
    {
        if (authentication.Authorized(digestData, services::HttpVerbToString(parser.Verb())))
            ReceivedAuthorizedRequest(parser, connection);
        else
            SendUnauthorizedResponse(connection);
    }

    void AuthenticatedHttpPage::ReceivedAuthorizedRequest(services::HttpRequestParser& parser, services::HttpServerConnection& connection)
    {
        authorized = true;
        page.RequestReceived(parser, connection);
    }

    void AuthenticatedHttpPage::SendUnauthorizedResponse(services::HttpServerConnection& connection)
    {
        authentication.GenerateNonce();
        connection.SendResponse(*this);
    }
}
