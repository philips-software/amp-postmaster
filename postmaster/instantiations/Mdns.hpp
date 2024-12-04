#ifndef POSTMASTER_MDNS_HPP
#define POSTMASTER_MDNS_HPP

#include "services/network/BonjourServer.hpp"

namespace main_
{
    struct Mdns
    {
        Mdns(infra::BoundedConstString hostname, services::DatagramFactory& factory, services::Multicast& multicast,
            services::IPv4Address ipAddress, infra::BoundedConstString version, infra::BoundedConstString versionFull, infra::BoundedConstString attributes);

        template<std::size_t Size>
        infra::BoundedString::WithStorage<Size> Create(infra::BoundedConstString contents, infra::BoundedConstString prefix) const;

        infra::BoundedString::WithStorage<35> name;
        infra::BoundedString::WithStorage<16> version;
        infra::BoundedString::WithStorage<19> versionFull;
        infra::BoundedString::WithStorage<67> attributes;
        services::DnsHostnameInPartsHelper<4> text{ services::DnsHostnameInParts(name)(version)(versionFull)(attributes) };
        services::BonjourServer server;
    };
}

#endif
