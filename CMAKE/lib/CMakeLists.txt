set(MY_LIBRARY_SOURCES
    ./src/lib.cpp
    ./src/adder.cpp
    ./src/subtracter.cpp
    ./src/multiplier.cpp
    ./src/divider.cpp
    ./src/mymath.cpp
) 

add_library(mylib ${MY_LIBRARY_SOURCES})

target_include_directories(mylib
    INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}
)