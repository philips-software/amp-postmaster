#ifndef POSTMASTER_VIEW_STATUS_HPP
#define POSTMASTER_VIEW_STATUS_HPP

#include "infra/util/BoundedString.hpp"
#include "preview/views/ViewText.hpp"
#include "services/network/Address.hpp"
#include "services/util/ConfigurationStore.hpp"

namespace application
{
    class ViewStatus
        : public services::ViewText
        , private services::ConfigurationStoreObserver
    {
    public:
        ViewStatus(const infra::BoundedString& hostname, services::ConfigurationStoreInterface& configurationStore);

        void SetConnectionOpen(bool open, services::IPAddress newAddress);
        void SetReceivingTarget(bool receiving);
        void SetReceivingSelf(bool receiving);

    private:
        // Implementation of ConfigurationStoreObserver
        void OperationDone(uint32_t id) override;

    private:
        void Update();

    private:
        const infra::BoundedString& hostname;

        bool connectionOpen = false;
        services::IPAddress address;
        bool receivingTarget = false;
        bool receivingSelf = false;

        infra::BoundedString::WithStorage<128> status;
    };
}

#endif
