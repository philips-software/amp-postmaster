#include "postmaster/instantiations/Mdns.hpp"

namespace main_
{
    Mdns::Mdns(infra::BoundedConstString hostname, services::DatagramFactory& factory, services::Multicast& multicast, services::IPv4Address ipAddress, infra::BoundedConstString version, infra::BoundedConstString versionFull, infra::BoundedConstString attributes)
        : name{ Create<35>(hostname, "nm") }
        , version{ Create<16>(version, "vs") }
        , versionFull{ Create<19>(versionFull, "vf") }
        , attributes{ Create<67>(attributes, "at") }
        , server(factory, multicast, hostname, "postmaster", "_tcp", std::make_optional(ipAddress), std::nullopt, 80, text)
    {}

    template<std::size_t Size>
    infra::BoundedString::WithStorage<Size> Mdns::Create(infra::BoundedConstString contents, infra::BoundedConstString prefix) const
    {
        infra::BoundedString::WithStorage<Size> result{ prefix };
        result.push_back(':');
        result += contents;
        return result;
    }
}
