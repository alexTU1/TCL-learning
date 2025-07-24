cmake_minimum_required(VERSION 3.28)
project(myproject)

add_executable(${PROJECT_NAME} main.cpp)


target_link_libraries(${PROJECT_NAME} mylib)

add_subdirectory(lib)