cmake_minimum_required(VERSION 3.28 FATAL_ERROR)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS OFF)

project(test_modules LANGUAGES CXX)

add_executable(test_modules src/main.cpp)

target_sources(test_modules
    PUBLIC
        FILE_SET CXX_MODULES
        FILES
            src/oper.ixx
            src/calc.ixx
    PRIVATE
        src/calc.cpp
)
