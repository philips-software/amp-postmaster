add_library(postmaster.instantiations_st STATIC)
emil_build_for(postmaster.instantiations_st TARGET_MCU_VENDOR st)

target_include_directories(postmaster.instantiations_st PUBLIC
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/../..>"
    "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>"
)

target_sources(postmaster.instantiations_st PRIVATE
    ConvertUart.hpp
    ConvertUart.cpp
    Display.cpp
    Display.hpp
    EthernetPostmaster.hpp
    Flash.cpp
    Flash.hpp
    HttpServerSt.cpp
    HttpServerSt.hpp
    NetworkConnected.hpp
)

target_link_libraries(postmaster.instantiations_st PUBLIC
    postmaster.instantiations
    hal_st.stm32fxxx
)
