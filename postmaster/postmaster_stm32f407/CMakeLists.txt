add_executable(postmaster.postmaster_stm32f407)
emil_build_for(postmaster.postmaster_stm32f407 TARGET_MCU stm32f407 PREREQUISITE_CONFIG Release RelWithDebInfo MinSizeRel)
emil_install(postmaster.postmaster_stm32f407 EXPORT postmasterPostmasterTargets DESTINATION bin)

get_target_property(exclude postmaster.postmaster_stm32f407 EXCLUDE_FROM_ALL)
if (NOT ${exclude})
    install(
        FILES
        $<TARGET_FILE_DIR:postmaster.postmaster_stm32f407>/$<TARGET_FILE_BASE_NAME:postmaster.postmaster_stm32f407>.map
        $<TARGET_FILE_DIR:postmaster.postmaster_stm32f407>/$<TARGET_FILE_BASE_NAME:postmaster.postmaster_stm32f407>.hex
        TYPE BIN
    )
endif()

target_include_directories(postmaster.postmaster_stm32f407 PUBLIC
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/../..>"
    "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>"
)

target_sources(postmaster.postmaster_stm32f407 PRIVATE
    Main.cpp
)

add_version_header_dependency(postmaster.postmaster_stm32f407 postmaster.version)

target_link_libraries(postmaster.postmaster_stm32f407 PUBLIC
    services.tracer
    services.util
    hal_st.instantiations
    hal_st.instantiations_lwip
    hal_st.synchronous_stm32fxxx
    postmaster.instantiations_st
)

halst_target_linker_scripts(TARGET postmaster.postmaster_stm32f407 LINKER_SCRIPTS
    ${CMAKE_CURRENT_LIST_DIR}/../bootloader/mem_stm32f407.ld
    ${CMAKE_CURRENT_LIST_DIR}/sections.ld
)

halst_target_default_init(postmaster.postmaster_stm32f407)

emil_generate_artifacts(TARGET postmaster.postmaster_stm32f407 BIN HEX MAP)
