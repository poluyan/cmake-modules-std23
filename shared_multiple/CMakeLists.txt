cmake_minimum_required(VERSION 3.28 FATAL_ERROR)

project(calculator)

set(interface_files oper.ixx calc.ixx)

foreach(file ${interface_files})
    configure_file(${CMAKE_SOURCE_DIR}/calc/src/${file} ${CMAKE_SOURCE_DIR}/demos/src/${file} COPYONLY)
    list(APPEND copied_files ${CMAKE_SOURCE_DIR}/demos/src/${file})
endforeach()

foreach(file ${interface_files})
    list(APPEND public_interfaces src/${file})
endforeach()

set(public_interfaces PUBLIC FILE_SET CXX_MODULES FILES ${public_interfaces})
set_property(GLOBAL PROPERTY public_interfaces "${public_interfaces}")

add_subdirectory(calc)
add_subdirectory(demos)

