cmake_minimum_required(VERSION 3.12 FATAL_ERROR)
project(School_NEA VERSION 0.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug
        CACHE STRING "Choose the build type (Debug or Release)" FORCE)
endif()

configure_file(config.h.in config.h)

find_package(SFML 2.5
        COMPONENTS
            system window graphics network audio
        REQUIRED)

    add_executable(School_NEA src/main.cpp src/App.cpp)
    target_include_directories(School_NEA
        PUBLIC "include/" 
        PRIVATE "${PROJECT_BINARY_DIR}"
        # PRIVATE "${PROJECT_SOURCE_DIR}/NEA")
        )

target_link_libraries(School_NEA sfml-window sfml-graphics)

install(TARGETS School_NEA DESTINATION bin)
