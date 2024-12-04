#include "postmaster/flex/HttpClientAuthenticationDigest.hpp"
#include "infra/stream/StringOutputStream.hpp"
#include "postmaster/frontend/AuthenticatedHttpPage.hpp"
#include "postmaster/frontend/CommaSeparatedKeyValueListParser.hpp"

namespace application
{
    HttpClientAuthenticationDigest::HttpClientAuthenticationDigest(infra::BoundedVector<services::HttpHeader>& headersWithAuthorization, infra::BoundedConstString password, hal::SynchronousRandomDataGenerator& randomDataGenerator)
        : HttpClientAuthentication(headersWithAuthorization)
        , password(password)
        , randomDataGenerator(randomDataGenerator)
    {}

    void HttpClientAuthenticationDigest::Authenticate(services::HttpVerb verb, infra::BoundedConstString target, infra::BoundedConstString scheme, infra::BoundedConstString value)
    {
        if (scheme == "Digest")
            ComputeAuthenticationResponse(verb, target, value);
    }

    infra::BoundedConstString HttpClientAuthenticationDigest::AuthenticationHeader() const
    {
        return authenticationResponse;
    }

    bool HttpClientAuthenticationDigest::Retry() const
    {
        return retry;
    }

    void HttpClientAuthenticationDigest::Reset()
    {
        retry = false;
    }

    void Stream(infra::TextOutputStream& stream, infra::BoundedConstString tag, infra::BoundedConstString value, bool quoted)
    {
        stream << tag << "=";

        if (quoted)
            stream << '"';

        stream << value;

        if (quoted)
            stream << '"';

        stream << ',';
    }

    void HttpClientAuthenticationDigest::ComputeAuthenticationResponse(services::HttpVerb verb, infra::BoundedConstString target, infra::BoundedConstString keyValues)
    {
        Authentication::DigestData digestData;
        CommaSeparatedKeyValueListParser keyValueParser(keyValues, [&digestData](infra::BoundedConstString key, infra::BoundedConstString value)
            {
                if (key == "realm")
                    digestData.realm = value;
                if (key == "nonce")
                    digestData.nonce = value;
                if (key == "qop")
                    digestData.qop = value;
            });

        if (keyValueParser.Valid())
        {
            digestData.username = infra::BoundedConstString("username");
            digestData.uri = target;
            ncString.clear();
            infra::StringOutputStream ncStream(ncString);
            ncStream << infra::hex << infra::Width(8, '0') << nc;
            digestData.nc = ncString;
            std::array<uint8_t, 16> cnonce;
            randomDataGenerator.GenerateRandomData(cnonce);
            cnonceString.clear();
            infra::StringOutputStream cnonceStream(cnonceString);
            cnonceStream << infra::AsHex(cnonce);
            digestData.cnonce = cnonceString;

            infra::StringOutputStream::WithStorage<256> input;
            input << digestData.username << ":postmaster:" << password;
            auto hash1 = sha.Calculate(infra::StringAsByteRange(input.Storage()));

            input.Storage().clear();
            input << services::HttpVerbToString(verb) << ":" << digestData.uri;
            auto hash2 = sha.Calculate(infra::StringAsByteRange(input.Storage()));

            auto nonce = FromHex<16>(digestData.nonce);

            input.Storage().clear();
            input << infra::AsHex(hash1) << ":" << infra::AsHex(nonce) << ":" << digestData.nc << ":" << digestData.cnonce << ":auth:" << infra::AsHex(hash2);
            auto computedResponse = sha.Calculate(infra::StringAsByteRange(input.Storage()));
            infra::StringOutputStream::WithStorage<64> responseStream;
            responseStream << infra::AsHex(computedResponse);
            digestData.response = responseStream.Storage();

            auto oldAuthenticationResponse = authenticationResponse;
            authenticationResponse.clear();
            infra::StringOutputStream stream(authenticationResponse);
            stream << "Digest ";
            Stream(stream, "username", digestData.username, true);
            Stream(stream, "realm", digestData.realm, true);
            Stream(stream, "nonce", digestData.nonce, false);
            Stream(stream, "uri", digestData.uri, true);
            Stream(stream, "qop", digestData.qop, false);
            Stream(stream, "algorithm", "SHA-256", false);
            Stream(stream, "nc", digestData.nc, false);
            Stream(stream, "cnonce", digestData.cnonce, true);
            Stream(stream, "response", digestData.response, true);
            authenticationResponse.pop_back();

            ++retries;
            retry = oldAuthenticationResponse != authenticationResponse && retries < 3;
        }
    }
}
