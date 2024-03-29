cmake_minimum_required(VERSION 3.28 FATAL_ERROR)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS OFF)

project(calculator LANGUAGES CXX)

if(CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
    add_compile_options(/std:c++latest /experimental:module)
endif()

add_executable(calculator src/main.cpp)

target_sources(calculator
    PUBLIC
        FILE_SET CXX_MODULES
        FILES
            src/oper.ixx
            src/calc.ixx
    PRIVATE
        src/calc.cpp
)
