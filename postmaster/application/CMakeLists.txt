add_library(postmaster.application STATIC)

target_include_directories(postmaster.application PUBLIC
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/../..>"
    "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>"
)

target_sources(postmaster.application PRIVATE
    HttpPageConfiguration.cpp
    HttpPageConfiguration.hpp
    HttpPageDiscovery.cpp
    HttpPageDiscovery.hpp
    MdnsDiscovery.cpp
    MdnsDiscovery.hpp
    ViewNetworkStatus.cpp
    ViewNetworkStatus.hpp
    ViewStatus.cpp
    ViewStatus.hpp
)

add_version_header_dependency(postmaster.application postmaster.version)

target_link_libraries(postmaster.application PUBLIC
    infra.syntax
    preview.views
    preview.fonts
    lwip.lwip_cpp
)
