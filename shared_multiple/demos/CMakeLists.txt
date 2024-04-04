cmake_minimum_required(VERSION 3.28 FATAL_ERROR)

project(demos LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS OFF)

add_compile_options(-stdlib=libc++ -fmodules -fbuiltin-module-map)
add_link_options(-stdlib=libc++ -fmodules -fbuiltin-module-map)

add_executable(main)
target_sources(main ${public_interfaces} PUBLIC src/main.cpp)

target_link_libraries(main calc)
