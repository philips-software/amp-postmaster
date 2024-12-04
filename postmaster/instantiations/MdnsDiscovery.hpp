#ifndef POSTMASTER_MDNS_DISCOVERY_HPP
#define POSTMASTER_MDNS_DISCOVERY_HPP

#include "infra/timer/Timer.hpp"
#include "infra/util/BoundedVector.hpp"
#include "services/network/MdnsClient.hpp"

namespace application
{
    struct PostmasterInfo
    {
        services::IPv4Address ipAddress;
        infra::BoundedString::WithStorage<64> hostname;
        infra::BoundedString::WithStorage<16> version;
        infra::BoundedString::WithStorage<16> versionFull;
        infra::BoundedString::WithStorage<64> attributes;
    };

    class MdnsQueryPostmaster;

    class PostmasterDiscovery
        : public infra::Observer<PostmasterDiscovery, MdnsQueryPostmaster>
    {
    public:
        template<std::size_t N>
        using WithStorage = infra::WithStorage<PostmasterDiscovery, infra::BoundedVector<std::pair<PostmasterInfo, infra::TimePoint>>::WithMaxSize<N>>;

        PostmasterDiscovery(infra::BoundedVector<std::pair<PostmasterInfo, infra::TimePoint>>& postmasters, MdnsQueryPostmaster& mdnsQuery);

        void Discovered(const PostmasterInfo& postmaster);
        void EnumerateDiscoveredPostmasters(const infra::Function<void(const PostmasterInfo& postmaster, infra::Duration seenSince)>& enumerator);

    private:
        void Refresh();
        void RemoveOldestPostmaster();
        void RemoveExpiredPostmasters();

    private:
        infra::BoundedVector<std::pair<PostmasterInfo, infra::TimePoint>>& postmasters;
        infra::TimerRepeating refreshTimer{ std::chrono::seconds(5), [this]()
            {
                Refresh();
            } };
    };

    class MdnsQueryPostmaster
        : public infra::Subject<PostmasterDiscovery>
        , private services::MdnsQuery
    {
    public:
        MdnsQueryPostmaster(services::MdnsClient& mdnsClient);
        ~MdnsQueryPostmaster();

        void Query();

    private:
        // Implementation of MdnsQuery
        virtual infra::BoundedConstString DnsHostname() const override;
        virtual services::DnsType DnsType() const override;
        virtual bool IsWaiting() const override;
        virtual void SetWaiting(bool waiting) override;
        virtual services::IPVersions IpVersion() const override;
        virtual void CheckAnswer(services::IPVersions ipVersion, infra::BoundedString& hostname, services::DnsRecordPayload& payload, infra::ConstByteRange data) override;
        virtual void CheckAdditionalRecord(infra::BoundedString& hostname, services::DnsRecordPayload& payload, infra::ConstByteRange data) override;
        virtual void EndOfAnswerNotification() override;

    private:
        void ParseData(infra::ConstByteRange data);
        void ParseField(infra::BoundedConstString data);

    private:
        services::MdnsClient& mdnsClient;

        bool waiting = false;
        bool valid = false;
        PostmasterInfo info;
    };
}

namespace main_
{
    struct MdnsDiscovery
    {
        MdnsDiscovery(services::DatagramFactory& datagramFactory, services::Multicast& multicast)
            : mdnsClient(datagramFactory, multicast, services::IPVersions::ipv4)
        {}

        services::MdnsClient mdnsClient;
        application::MdnsQueryPostmaster postmasterQuery{ mdnsClient };
        application::PostmasterDiscovery::WithStorage<100> discovery{ postmasterQuery };
    };
}

#endif
