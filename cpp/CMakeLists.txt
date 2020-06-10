cmake_minimum_required(VERSION 3.16)

project(algo-study C)

set(CMAKE_CXX_STANDARD 14)

include_directories(include)
add_subdirectory(src)

add_subdirectory(tests)
