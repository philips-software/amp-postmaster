#ifndef POSTMASTER_VIEW_STATUS_HPP
#define POSTMASTER_VIEW_STATUS_HPP

#include "infra/util/BoundedString.hpp"
#include "preview/views/ViewText.hpp"
#include "services/network/Address.hpp"

namespace application
{
    class ViewStatus
        : public services::ViewText
    {
    public:
        ViewStatus(infra::BoundedConstString hostname);

        void SetConnectionOpen(bool open, services::IPAddress newAddress);
        void SetReceivingTarget(bool receiving);
        void SetReceivingSelf(bool receiving);

    private:
        void Update();

    private:
        infra::BoundedConstString hostname;

        bool connectionOpen = false;
        services::IPAddress address;
        bool receivingTarget = false;
        bool receivingSelf = false;

        infra::BoundedString::WithStorage<128> status;
    };
}

#endif
