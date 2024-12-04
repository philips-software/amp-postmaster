add_executable(postmaster.discovery)
emil_build_for(postmaster.discovery HOST All)

target_sources(postmaster.discovery PRIVATE
    Main.cpp
)

target_link_libraries(postmaster.discovery PRIVATE
    hal.generic
    postmaster.instantiations
    services.network_instantiations
)
