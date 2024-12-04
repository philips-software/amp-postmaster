add_executable(postmaster.prototype_win)
emil_build_for(postmaster.prototype_win HOST Windows)

target_sources(postmaster.prototype_win PRIVATE
    Main.cpp
)

add_version_header_dependency(postmaster.prototype_win postmaster.version)

target_link_libraries(postmaster.prototype_win PUBLIC
    postmaster.instantiations
    postmaster.programmer
    hal.generic
    hal.windows
    services.network_instantiations
)
