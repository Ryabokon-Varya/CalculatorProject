cmake_minimum_required(VERSION 3.10)

project(CalculatorProject)

set(CMAKE_CXX_STANDARD 11)

add_library(calculator STATIC calculator.cpp)

add_executable(calculator_main main.cpp)

target_link_libraries(calculator_main calculator)
