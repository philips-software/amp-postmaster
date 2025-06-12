add_executable(postmaster.programmer.test)
emil_build_for(postmaster.programmer.test HOST All)
emil_add_test(postmaster.programmer.test)

target_link_libraries(postmaster.programmer.test PUBLIC
    gmock_main
    postmaster.programmer
    hal.interfaces_test_doubles
)

target_sources(postmaster.programmer.test PRIVATE
    TestFlashAligner.cpp
)
