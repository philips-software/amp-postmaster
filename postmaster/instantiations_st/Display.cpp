#include "postmaster/instantiations_st/Display.hpp"

namespace main_
{
    Display::Display(const postmaster_configuration::Configuration& configuration)
        : viewStatus{ std::chrono::milliseconds(25), 1, std::chrono::seconds(2), configuration.hostname }
        , networkQrCode{ configuration.password }
    {
        displayView.SetViewRegion(display.DisplayRegion());

        layoutViewHorizontal.Add(networkQrCode);
        layoutViewHorizontal.AddFill(layoutView, 1);
        layoutView.AddFill(viewStatus.Scrolling(), 1);
        layoutView.AddFill(viewNetworkStatus.Scrolling(), 1);
        layoutViewHorizontal.ResetLayout();
    }
}
