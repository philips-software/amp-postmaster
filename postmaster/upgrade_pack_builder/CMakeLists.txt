add_executable(postmaster.upgrade_pack_builder)
emil_build_for(postmaster.upgrade_pack_builder HOST All)

target_sources(postmaster.upgrade_pack_builder PRIVATE
    Main.cpp
)

target_link_libraries(postmaster.upgrade_pack_builder PUBLIC
    upgrade.pack_builder_instantiations
)
