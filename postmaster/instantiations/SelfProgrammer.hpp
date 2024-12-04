#ifndef POSTMASTER_SELF_PROGRAMMER_HPP
#define POSTMASTER_SELF_PROGRAMMER_HPP

#include "postmaster/programmer/FirmwareReceptorReporting.hpp"
#include "postmaster/programmer/FirmwareReceptorResetWhenDone.hpp"
#include "postmaster/programmer/FirmwareReceptorToFlash.hpp"
#include "postmaster/programmer/HttpPageFirmware.hpp"

namespace main_
{
    struct SelfProgrammer
    {
        SelfProgrammer(application::HttpPageFirmware& page, hal::Flash& flash, hal::Reset& reset, const infra::Function<void(bool receiving)>& receiving)
            : firmwareReceptor{ flash }
            , firmwareReceptorReboot{ firmwareReceptor, reset }
            , firmwareReceptorReporting(firmwareReceptorReboot, receiving)
        {
            page.SetReceptor(firmwareReceptorReporting);
        }

        application::FirmwareReceptorToFlash firmwareReceptor;
        application::FirmwareReceptorResetWhenDone firmwareReceptorReboot;
        application::FirmwareReceptorReporting firmwareReceptorReporting;
    };
}

#endif
