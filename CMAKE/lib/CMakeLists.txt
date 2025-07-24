add_library(mylib ./src/lib.cpp)

target_include_directories(mylib
    INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}
)