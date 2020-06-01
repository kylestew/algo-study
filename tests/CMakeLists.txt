project(tests)

add_subdirectory(googletest)
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

# adding the Google_Tests_run target
add_executable(tests BinarySearchTreeTests.cpp)

# linking Google_Tests_run with DateConverter_lib which will be tested
#target_link_libraries(Google_Tests_run LedDriver)

target_link_libraries(tests gtest_main)

#add_test(NAME test_test COMMAND test)
