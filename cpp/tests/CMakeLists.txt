project(tests)

find_package(GTest REQUIRED)

# adding the Google_Tests_run target
# add_executable(tests BSTTests.cpp StackTests.cpp)
add_executable(tests BSTTests.cpp)

# linking Google_Tests_run with DateConverter_lib which will be tested
target_link_libraries(tests algos)

target_link_libraries(tests GTest::GTest GTest::Main)
