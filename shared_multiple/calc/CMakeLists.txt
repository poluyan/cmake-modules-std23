cmake_minimum_required(VERSION 3.28 FATAL_ERROR)

project(calc LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS OFF)

add_compile_options(-stdlib=libc++ -fmodules -fbuiltin-module-map)
add_library(calc SHARED)
target_sources(calc PUBLIC FILE_SET CXX_MODULES FILES src/oper.ixx src/calc.ixx PRIVATE src/calc.cpp)
#add_library(calc SHARED)
#target_sources(calc src/calc.cpp)

#add_custom_command(TARGET calc POST_BUILD COMMAND ${CMAKE_COMMAND} -E remove_directory ${CMAKE_BUILD_DIRECTORY}/calc/CMakeFiles/calc.dir)





