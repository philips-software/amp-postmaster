#ifndef POSTMASTER_VIEW_NETWORK_STATUS_HPP
#define POSTMASTER_VIEW_NETWORK_STATUS_HPP

#include "infra/timer/Timer.hpp"
#include "preview/interfaces/QrCode.hpp"
#include "preview/views/ViewBitmap.hpp"
#include "preview/views/ViewText.hpp"
#include "services/util/ConfigurationStore.hpp"

namespace application
{
    class ViewNetworkStatus
        : public services::ViewText
    {
    public:
        ViewNetworkStatus();

    private:
        void Update();

    private:
        infra::BoundedString::WithStorage<32> status;
        infra::TimerRepeating update{ std::chrono::milliseconds(250), [this]()
            {
                Update();
            },
            infra::triggerImmediately };
    };

    class ViewNetworkQrCode
        : private services::QrCode<3, services::QrCodeEcc::medium>
        , public services::ViewBitmap
    {
    public:
        ViewNetworkQrCode(const infra::BoundedString& password);

    private:
        void UpdateNetworkStatus();

    private:
        const infra::BoundedString& password;
        infra::BoundedString::WithStorage<MaxSizeLatin1()> status;
        infra::TimerRepeating update{ std::chrono::seconds(1), [this]()
            {
                UpdateNetworkStatus();
            },
            infra::triggerImmediately };
    };
};

#endif
