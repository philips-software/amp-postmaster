#include "postmaster/application/ViewStatus.hpp"
#include "infra/stream/StringOutputStream.hpp"

namespace application
{
    ViewStatus::ViewStatus(const infra::BoundedString& hostname, services::ConfigurationStoreInterface& configurationStore)
        : services::ViewText(services::TextAttributes{ infra::Colour::white, infra::freeSans9pt7b })
        , services::ConfigurationStoreObserver(configurationStore)
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

    void ViewStatus::OperationDone(uint32_t id)
    {
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
