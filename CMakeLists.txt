cmake_minimum_required(VERSION 3.24)

project(Postmaster VERSION 0.3.1) # x-release-please-version

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED true)

option(CMAKE_COMPILE_WARNING_AS_ERROR "Enable warnings-as-error" On)
option(HALST_BUILD_TESTS "Enable building the tests" Off)

include(CheckIPOSupported)
check_ipo_supported(RESULT supported OUTPUT error)
if (supported)
    Set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_MINSIZEREL TRUE)
endif()

add_definitions(-DMEMP_NUM_UDP_PCB=10)

set(HALST_INCLUDE_DEFAULT_LINKER_SCRIPTS Off CACHE INTERNAL "")

if (POSTMASTER_BUILD_TESTS)
    include(CTest)
endif()

add_subdirectory(amp-embedded-infra-lib)
add_subdirectory(amp-hal-st)
add_subdirectory(amp-preview)

if (POSTMASTER_BUILD_TESTS)
    emil_enable_testing()
endif()

add_subdirectory(postmaster)

emil_folderize_all_targets()
emil_clangformat_directories(postmaster DIRECTORIES postmaster)

if (TARGET_MCU STREQUAL stm32407)
    function(generate_export_targets name)
        install(EXPORT postmaster${name}Targets
            FILE postmaster${name}Targets.cmake
            DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/postmaster
        )
    endfunction()

    foreach(target IN ITEMS Postmaster)
        generate_export_targets(${target})
    endforeach()

    write_basic_package_version_file(
        "${CMAKE_CURRENT_BINARY_DIR}/cmake/${PROJECT_NAME}ConfigVersion.cmake"
        COMPATIBILITY SameMajorVersion
        # When cross-compiling for a 32-bit architecture and re-using host tooling from a 64-bit architecture
        # ARCH_INDEPENDENT is necessary here. See: https://cmake.org/cmake/help/latest/module/CMakePackageConfigHelpers.html.
        ARCH_INDEPENDENT
    )

    configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/cmake/Config.cmake.in
        "${CMAKE_CURRENT_BINARY_DIR}/cmake/${PROJECT_NAME}Config.cmake"
        INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
    )

    install(FILES
        "${CMAKE_CURRENT_BINARY_DIR}/cmake/${PROJECT_NAME}Config.cmake"
        "${CMAKE_CURRENT_BINARY_DIR}/cmake/${PROJECT_NAME}ConfigVersion.cmake"
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
    )
endif()

set(CPACK_GENERATOR "TGZ")
set(CPACK_SOURCE_IGNORE_FILES ".vs/;.git/;build/")
set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set(CPACK_PACKAGE_VERSION "${PROJECT_VERSION}")
set(CPACK_PACKAGE_VENDOR "Koninklijke Philips N.V")
set(CPACK_PACKAGE_DESCRIPTION "${PROJECT_DESCRIPTION}")
set(CPACK_DEBIAN_PACKAGE_NAME "${CPACK_PACKAGE_NAME}")
set(CPACK_RPM_PACKAGE_NAME "${CPACK_PACKAGE_NAME}")
set(CPACK_PACKAGE_HOMEPAGE_URL "${PROJECT_HOMEPAGE_URL}")
set(CPACK_PACKAGE_MAINTAINER "${CPACK_PACKAGE_VENDOR}")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "${CPACK_PACKAGE_VENDOR}")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE.md")
set(CPACK_RESOURCE_FILE_README "${CMAKE_CURRENT_SOURCE_DIR}/README.md")

include(CPack)
