#ifndef POSTMASTER_DISPLAY_HPP
#define POSTMASTER_DISPLAY_HPP

#include "generated/echo/PostmasterConfiguration.pb.hpp"
#include "hal_st/stm32fxxx/I2cStm.hpp"
#include "postmaster/instantiations/ViewNetworkStatus.hpp"
#include "postmaster/instantiations/ViewStatus.hpp"
#include "preview/interfaces/BitmapPainter.hpp"
#include "preview/interfaces/BufferedDisplaySsd1306.hpp"
#include "preview/interfaces/ViewPainterBufferedDisplay.hpp"
#include "preview/interfaces/ViewRepainter.hpp"
#include "preview/views/HorizontalLayout.hpp"
#include "preview/views/VerticalLayout.hpp"
#include "preview/views/ViewPanel.hpp"
#include "preview/views/ViewRotating.hpp"
#include "preview/views/ViewScrolling.hpp"

namespace main_
{
    struct Display
    {
        Display(const postmaster_configuration::Configuration& configuration);

        hal::GpioPinStm scl{ hal::Port::B, 8, hal::Drive::OpenDrain };
        hal::GpioPinStm sda{ hal::Port::B, 9, hal::Drive::OpenDrain };

        hal::I2cStm::Config config{ []()
            {
                hal::I2cStm::Config result;
#if defined(STM32F0) || defined(STM32F7)
                result.timing = 0x10304d4d;
#endif
                return result;
            }() };
        hal::I2cStm i2c{ 1, scl, sda, config };

        hal::BitmapPainterCanonical bitmapPainter;
        services::BufferedDisplaySsd1306 display{ i2c };
        services::ViewPainterBufferedDisplay::WithBuffer<32, 128, infra::PixelFormat::blackandwhite> painter{ display, bitmapPainter };
        services::ViewPainterAlignedForSsd1306 painterAligned{ painter };

        services::ViewRotating::WithView<services::ViewPanel::WithView<services::HorizontalLayout::WithMaxViews<2>>> displayView{ infra::RightAngle::angle_270, infra::Colour::black };

        services::ViewRepainterPaintWhenDirty repainter{ painterAligned, displayView };

        services::HorizontalLayout& layoutViewHorizontal{ displayView.SubView().SubView() };
        services::VerticalLayout::WithMaxViews<2> layoutView;

        services::ViewScrolling::WithView<application::ViewStatus> viewStatus;
        services::ViewScrolling::WithView<application::ViewNetworkStatus> viewNetworkStatus{ std::chrono::milliseconds(25), 1, std::chrono::seconds(2) };
        application::ViewNetworkQrCode networkQrCode;
    };
}

#endif
