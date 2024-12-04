add_library(postmaster.instantiations STATIC)

target_include_directories(postmaster.instantiations PUBLIC
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/../..>"
    "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>"
)

protocol_buffer_echo_cpp(postmaster.instantiations
    PostmasterConfiguration.proto
)

target_sources(postmaster.instantiations PRIVATE
    Configuration.cpp
    Configuration.hpp
    EchoServer.cpp
    EchoServer.hpp
    HttpPageConfiguration.cpp
    HttpPageConfiguration.hpp
    HttpPageDiscovery.cpp
    HttpPageDiscovery.hpp
    HttpServer.cpp
    HttpServer.hpp
    HttpServerFrontEnd.cpp
    HttpServerFrontEnd.hpp
    Mdns.cpp
    Mdns.hpp
    MdnsDiscovery.cpp
    MdnsDiscovery.hpp
    SelfProgrammer.hpp
    TargetProgrammer.hpp
    TargetUart.cpp
    TargetUart.hpp
    TargetUartEcho.cpp
    TargetUartEcho.hpp
    UartCreator.hpp
    ViewNetworkStatus.cpp
    ViewNetworkStatus.hpp
    ViewStatus.cpp
    ViewStatus.hpp
)

add_version_header_dependency(postmaster.instantiations postmaster.version)

target_link_libraries(postmaster.instantiations PUBLIC
    infra.syntax
    postmaster.programmer
    postmaster.frontend
    preview.views
    preview.fonts
    lwip.lwip_cpp
)
