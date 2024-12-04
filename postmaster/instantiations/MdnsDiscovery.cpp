#include "postmaster/instantiations/MdnsDiscovery.hpp"
#include "infra/stream/ByteInputStream.hpp"

namespace application
{
    namespace
    {
        bool StringEndsIn(infra::BoundedConstString string, infra::BoundedConstString end)
        {
            return string.size() >= end.size() && string.substr(string.size() - end.size()) == end;
        }
    }

    PostmasterDiscovery::PostmasterDiscovery(infra::BoundedVector<std::pair<PostmasterInfo, infra::TimePoint>>& postmasters, MdnsQueryPostmaster& mdnsQuery)
        : infra::Observer<PostmasterDiscovery, MdnsQueryPostmaster>(mdnsQuery)
        , postmasters(postmasters)
    {}

    void PostmasterDiscovery::Discovered(const PostmasterInfo& postmaster)
    {
        for (auto& i : postmasters)
            if (i.first.hostname == postmaster.hostname)
            {
                i.first = postmaster;
                i.second = infra::Now();
                return;
            }

        if (postmasters.full())
            RemoveOldestPostmaster();

        postmasters.push_back({ postmaster, infra::Now() });
    }

    void PostmasterDiscovery::EnumerateDiscoveredPostmasters(const infra::Function<void(const PostmasterInfo& postmaster, infra::Duration seenSince)>& enumerator)
    {
        auto now = infra::Now();

        for (const auto& postmaster : postmasters)
            enumerator(postmaster.first, now - postmaster.second);
    }

    void PostmasterDiscovery::Refresh()
    {
        RemoveExpiredPostmasters();

        bool necessary = true;
        auto minimumSeen = infra::Now() - refreshTimer.TriggerPeriod();

        for (const auto& i : postmasters)
            necessary = necessary && i.second > minimumSeen;

        if (necessary)
            Subject().Query();
    }

    void PostmasterDiscovery::RemoveOldestPostmaster()
    {
        assert(!postmasters.empty());
        auto minimum = postmasters.begin();

        auto i = postmasters.begin();
        for (; i != postmasters.end(); ++i)
            if (i->second < minimum->second)
                minimum = i;

        postmasters.erase(minimum);
    }

    void PostmasterDiscovery::RemoveExpiredPostmasters()
    {
        auto minimumSeen = infra::Now() - 2 * refreshTimer.TriggerPeriod();
        infra::erase_if(postmasters, [minimumSeen](auto& info)
            {
                return info.second <= minimumSeen;
            });
    }

    MdnsQueryPostmaster::MdnsQueryPostmaster(services::MdnsClient& mdnsClient)
        : mdnsClient(mdnsClient)
    {
        mdnsClient.RegisterQuery(*this);
    }

    MdnsQueryPostmaster::~MdnsQueryPostmaster()
    {
        mdnsClient.UnRegisterQuery(*this);
    }

    void MdnsQueryPostmaster::Query()
    {
        mdnsClient.ActiveQuerySingleShot(*this);
    }

    infra::BoundedConstString MdnsQueryPostmaster::DnsHostname() const
    {
        return "postmaster._tcp.local";
    }

    services::DnsType MdnsQueryPostmaster::DnsType() const
    {
        return services::DnsType::dnsTypePtr;
    }

    bool MdnsQueryPostmaster::IsWaiting() const
    {
        return waiting;
    }

    void MdnsQueryPostmaster::SetWaiting(bool waiting)
    {
        this->waiting = waiting;
    }

    services::IPVersions MdnsQueryPostmaster::IpVersion() const
    {
        return services::IPVersions::ipv4;
    }

    void MdnsQueryPostmaster::CheckAnswer(services::IPVersions ipVersion, infra::BoundedString& hostname, services::DnsRecordPayload& payload, infra::ConstByteRange data)
    {
        auto type = static_cast<services::DnsType>(static_cast<uint16_t>(payload.type));

        if (type == services::DnsType::dnsTypeA)
        {
            infra::ByteInputStream stream(data, infra::noFail);
            info.ipAddress = stream.Extract<services::IPv4Address>();
        }

        if ((type == services::DnsType::dnsTypeTxt) && StringEndsIn(hostname, ".postmaster._tcp.local"))
        {
            valid = true;
            info.hostname = hostname.substr(0, info.hostname.max_size());
            ParseData(data);
        }
    }

    void MdnsQueryPostmaster::CheckAdditionalRecord(infra::BoundedString& hostname, services::DnsRecordPayload& payload, infra::ConstByteRange data)
    {
        CheckAnswer(services::IPVersions::ipv4, hostname, payload, data);
    }

    void MdnsQueryPostmaster::EndOfAnswerNotification()
    {
        if (valid)
            NotifyObservers([this](auto& observer)
                {
                    observer.Discovered(info);
                });

        valid = false;
        infra::ReConstruct(info);
    }

    void MdnsQueryPostmaster::ParseData(infra::ConstByteRange data)
    {
        while (!data.empty())
        {
            uint8_t length = data.front();
            data.pop_front();

            ParseField(infra::ByteRangeAsString(infra::Head(data, length)));
            data.pop_front(length);
        }
    }

    void MdnsQueryPostmaster::ParseField(infra::BoundedConstString data)
    {
        infra::Tokenizer tokenizer(data, ':');

        if (tokenizer.Token(0) == "vs")
            info.version = tokenizer.TokenAndRest(1).substr(0, info.version.max_size());
        else if (tokenizer.Token(0) == "vf")
            info.versionFull = tokenizer.TokenAndRest(1).substr(0, info.versionFull.max_size());
        else if (tokenizer.Token(0) == "at")
            info.attributes = tokenizer.TokenAndRest(1).substr(0, info.attributes.max_size());
    }
}
