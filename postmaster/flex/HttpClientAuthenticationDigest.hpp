#ifndef POSTMASTER_HTTP_CLIENT_AUTHENTICATION_DIGEST_HPP
#define POSTMASTER_HTTP_CLIENT_AUTHENTICATION_DIGEST_HPP

#include "hal/synchronous_interfaces/SynchronousRandomDataGenerator.hpp"
#include "services/network/HttpClientAuthentication.hpp"
#include "services/util/Sha256MbedTls.hpp"

namespace application
{
    class HttpClientAuthenticationDigest
        : public services::HttpClientAuthentication
    {
    public:
        template<std::size_t MaxHeaders>
        using WithMaxHeaders = infra::WithStorage<HttpClientAuthenticationDigest, infra::BoundedVector<services::HttpHeader>::WithMaxSize<MaxHeaders>>;

        HttpClientAuthenticationDigest(infra::BoundedVector<services::HttpHeader>& headersWithAuthorization, infra::BoundedConstString password, hal::SynchronousRandomDataGenerator& randomDataGenerator);

    protected:
        // Implementation of HttpClientAuthentication
        void Authenticate(services::HttpVerb verb, infra::BoundedConstString target, infra::BoundedConstString scheme, infra::BoundedConstString value) override;
        infra::BoundedConstString AuthenticationHeader() const override;
        bool Retry() const override;
        void Reset() override;

    private:
        void ComputeAuthenticationResponse(services::HttpVerb verb, infra::BoundedConstString target, infra::BoundedConstString keyValues);

    private:
        const services::Sha256MbedTls sha;
        infra::BoundedConstString password;
        hal::SynchronousRandomDataGenerator& randomDataGenerator;

        uint32_t nc = 1;
        infra::BoundedString::WithStorage<8> ncString;
        infra::BoundedString::WithStorage<32> cnonceString;
        infra::BoundedString::WithStorage<1024> authenticationResponse;
        bool retry = false;
        int retries = 0;
    };
}

#endif
