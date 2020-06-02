project(tests)

add_subdirectory(googletest)
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

# adding the Google_Tests_run target
add_executable(tests BSTTests.cpp)

# linking Google_Tests_run with DateConverter_lib which will be tested
target_link_libraries(tests algos)

target_link_libraries(tests gtest_main)
