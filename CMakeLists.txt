cmake_minimum_required(VERSION 3.3)
project(cmake-rpath-link)

add_library(A SHARED a.cpp)
set_target_properties(A PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/alib
)

add_library(B SHARED b.cpp)
set_target_properties(B PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/blib
)
target_link_libraries(B
    PRIVATE A)

add_executable(exe main.cpp)
target_link_libraries(exe B)
