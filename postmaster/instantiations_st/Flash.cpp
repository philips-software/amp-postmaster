#include "postmaster/instantiations_st/Flash.hpp"

namespace main_
{
    Flash::Flash(hal::DmaStm& dma)
        : transmitStream(dma, hal::DmaChannelId{ 1, 5, 0 })
        , receiveStream(dma, hal::DmaChannelId{ 1, 0, 0 })
        , spiMaster(transmitStream, receiveStream, 3, spiClock, spiMiso, spiMosi)
    {}
}
