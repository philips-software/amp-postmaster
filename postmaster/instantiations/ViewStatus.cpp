#include "postmaster/instantiations/ViewStatus.hpp"
#include "infra/stream/StringOutputStream.hpp"

namespace application
{
    ViewStatus::ViewStatus(infra::BoundedConstString hostname)
        : services::ViewText(services::TextAttributes{ infra::Colour::white, infra::freeSans9pt7b })
        , hostname(hostname)
    {
        Update();
    }

    void ViewStatus::SetConnectionOpen(bool open, services::IPAddress newAddress)
    {
        connectionOpen = open;
        address = newAddress;

        Update();
    }

    void ViewStatus::SetReceivingTarget(bool receiving)
    {
        receivingTarget = receiving;

        Update();
    }

    void ViewStatus::SetReceivingSelf(bool receiving)
    {
        receivingSelf = receiving;

        Update();
    }

    void ViewStatus::Update()
    {
        status.clear();
        infra::StringOutputStream stream(status);

        if (!connectionOpen)
            stream << hostname << " idle";
        else if (receivingTarget)
            stream << hostname << " receiving target firmware from " << address;
        else if (receivingSelf)
            stream << hostname << " receiving upgrade from " << address;
        else
            stream << hostname << " connected to " << address;

        SetTextAndResize(status);
    }
}
