add_executable(postmaster.flex)
emil_build_for(postmaster.flex HOST All)

target_sources(postmaster.flex PRIVATE
    EchoWebSocketClientFactory.cpp
    EchoWebSocketClientFactory.hpp
    FlexHttpClient.cpp
    FlexHttpClient.hpp
    HttpClientAuthenticationDigest.cpp
    HttpClientAuthenticationDigest.hpp
    Main.cpp
)

if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    target_link_options(postmaster.flex PRIVATE -static -static-libgcc -static-libstdc++)
endif()

target_link_libraries(postmaster.flex PRIVATE
    args
    services.network_instantiations
    hal.generic
    postmaster.frontend
)
