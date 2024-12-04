cmake_minimum_required(VERSION 3.24)

project(Postmaster VERSION 0.1.0) # x-release-please-version

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED true)

option(CMAKE_COMPILE_WARNING_AS_ERROR "Enable warnings-as-error" On)

include(CheckIPOSupported)
check_ipo_supported(RESULT supported OUTPUT error)
if (supported)
    Set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_MINSIZEREL TRUE)
endif()

add_definitions(-DMEMP_NUM_UDP_PCB=10)

set(HALST_INCLUDE_DEFAULT_LINKER_SCRIPTS Off CACHE INTERNAL "")

add_subdirectory(amp-embedded-infra-lib)
add_subdirectory(amp-hal-st)
add_subdirectory(amp-preview)
add_subdirectory(postmaster)

emil_folderize_all_targets()
emil_clangformat_directories(postmaster DIRECTORIES postmaster)
