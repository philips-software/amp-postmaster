#include "postmaster/instantiations/ViewNetworkStatus.hpp"
#include "infra/stream/StringOutputStream.hpp"
#include "lwip/netif.h"

namespace application
{
    ViewNetworkStatus::ViewNetworkStatus()
        : services::ViewText(services::TextAttributes{ infra::Colour::white, infra::freeSans9pt7b })
    {}

    void ViewNetworkStatus::Update()
    {
        status.clear();
        infra::StringOutputStream stream(status);

        if (netif_is_link_up(netif_default))
            stream << ip4_addr1(&netif_default->ip_addr.u_addr.ip4) << "." << ip4_addr2(&netif_default->ip_addr.u_addr.ip4) << "." << ip4_addr3(&netif_default->ip_addr.u_addr.ip4) << "." << ip4_addr4(&netif_default->ip_addr.u_addr.ip4);
        else
            stream << "Link down";

        SetTextAndResize(status);
    }

    ViewNetworkQrCode::ViewNetworkQrCode(const infra::BoundedString& password)
        : services::QrCode<3, services::QrCodeEcc::medium>{ "No connection" }
        , services::ViewBitmap{ static_cast<infra::Bitmap>(*this) }
        , password(password)
    {}

    void ViewNetworkQrCode::UpdateNetworkStatus()
    {
        status.clear();
        infra::StringOutputStream stream(status, infra::noFail);

        if (netif_is_link_up(netif_default))
        {
            stream << "http://" << ip4_addr1(&netif_default->ip_addr.u_addr.ip4) << "." << ip4_addr2(&netif_default->ip_addr.u_addr.ip4) << "." << ip4_addr3(&netif_default->ip_addr.u_addr.ip4) << "." << ip4_addr4(&netif_default->ip_addr.u_addr.ip4);
            if (!password.empty())
                stream << "?p=" << password;
        }
        else
            stream << "No connection";

        Update(status);
        Source(static_cast<infra::Bitmap>(*this));
    }
};
