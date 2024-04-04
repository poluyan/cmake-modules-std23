cmake_minimum_required(VERSION 3.28 FATAL_ERROR)

project(calc LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS OFF)

add_compile_options(-stdlib=libc++ -fmodules -fbuiltin-module-map)
add_library(calc SHARED)
target_sources(calc PUBLIC FILE_SET CXX_MODULES FILES ${public_interfaces} PRIVATE src/calc.cpp)


