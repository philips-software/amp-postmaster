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
    HttpServer.cpp
    HttpServer.hpp
    HttpServerFrontEnd.cpp
    HttpServerFrontEnd.hpp
    Mdns.cpp
    Mdns.hpp
    SelfProgrammer.hpp
    TargetProgrammer.hpp
    TargetUart.cpp
    TargetUart.hpp
    TargetUartEcho.cpp
    TargetUartEcho.hpp
    UartCreator.hpp
)

target_link_libraries(postmaster.instantiations PUBLIC
    postmaster.application
    postmaster.programmer
    postmaster.frontend
)
