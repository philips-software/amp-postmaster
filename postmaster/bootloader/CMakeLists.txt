add_executable(postmaster.bootloader)

# The bootloader does not fit in its flash section when building the Debug configuration.
emil_build_for(postmaster.bootloader TARGET_MCU_VENDOR st PREREQUISITE_CONFIG Release RelWithDebInfo MinSizeRel)
emil_install(postmaster.bootloader EXPORT postmasterPostmasterTargets DESTINATION bin)

target_sources(postmaster.bootloader PRIVATE
    Main.cpp
)

target_link_libraries(postmaster.bootloader PUBLIC
    upgrade.boot_loader
    services.util
    hal_st.synchronous_stm32fxxx
)

halst_target_linker_scripts(TARGET postmaster.bootloader LINKER_SCRIPTS
    ${CMAKE_CURRENT_LIST_DIR}/mem_${TARGET_MCU}.ld
    ${CMAKE_CURRENT_LIST_DIR}/sections.ld
)

halst_target_default_init(postmaster.bootloader)

emil_generate_artifacts(TARGET postmaster.bootloader BIN HEX MAP)
