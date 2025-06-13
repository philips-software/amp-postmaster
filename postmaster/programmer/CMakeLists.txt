add_library(postmaster.programmer STATIC)

target_include_directories(postmaster.programmer PUBLIC
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/../..>"
    "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>"
)

target_sources(postmaster.programmer PRIVATE
    FirmwareReceptor.hpp
    FirmwareReceptorReporting.cpp
    FirmwareReceptorReporting.hpp
    FirmwareReceptorResetTarget.cpp
    FirmwareReceptorResetTarget.hpp
    FirmwareReceptorResetWhenDone.cpp
    FirmwareReceptorResetWhenDone.hpp
    FirmwareReceptorToFlash.cpp
    FirmwareReceptorToFlash.hpp
    FlashAligner.cpp
    FlashAligner.hpp
    HttpPageFirmware.cpp
    HttpPageFirmware.hpp
    TargetUartConnection.cpp
    TargetUartConnection.hpp
)

target_link_libraries(postmaster.programmer PUBLIC
    hal.interfaces
    infra.timer
    infra.util
    services.tracer
    services.util
    services.network
    services.st_util
    protobuf.echo
)

add_subdirectory(test)
