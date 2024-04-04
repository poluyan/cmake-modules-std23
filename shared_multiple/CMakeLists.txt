cmake_minimum_required(VERSION 3.28 FATAL_ERROR)

project(calculator)

set(interface_files oper.ixx calc.ixx)

foreach(file ${interface_files})
    list(APPEND public_interfaces src/${file})
endforeach()

set(public_interfaces PUBLIC FILE_SET CXX_MODULES FILES ${public_interfaces})
set_property(GLOBAL PROPERTY public_interfaces "${public_interfaces}")

foreach(file ${files_to_copy})
    configure_file(${CMAKE_SOURCE_DIR}/calc/src/${file} ${CMAKE_SOURCE_DIR}/demos/src/${file} COPYONLY)
    message(${CMAKE_CURRENT_BINARY_DIR}/src/${file})
endforeach()

add_subdirectory(calc)
add_subdirectory(demos)
