add_executable(postmaster.upgrade_pack_builder)
emil_build_for(postmaster.upgrade_pack_builder HOST All)
emil_install(postmaster.upgrade_pack_builder)

target_sources(postmaster.upgrade_pack_builder PRIVATE
    Main.cpp
)

target_link_libraries(postmaster.upgrade_pack_builder PUBLIC
    upgrade.pack_builder_instantiations
)

add_version_header_dependency(postmaster.upgrade_pack_builder postmaster.version)
