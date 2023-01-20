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
find_package(OpenGL REQUIRED)

    add_executable(${PROJECT_NAME}
        ./src/main.cpp
        ./src/App.cpp

        ./include/imgui-sfml/imgui-SFML.cpp

        ./include/imgui/imgui.cpp
        ./include/imgui/imgui_draw.cpp
        ./include/imgui/imgui_tables.cpp
        ./include/imgui/imgui_widgets.cpp
        )
    target_include_directories(${PROJECT_NAME}
        PUBLIC "include/" 
        PRIVATE "${PROJECT_BINARY_DIR}"
        # PRIVATE "${PROJECT_SOURCE_DIR}/NEA")
        )

    target_link_libraries(${PROJECT_NAME} ${OPENGL_LIBRARIES} sfml-window sfml-graphics)

install(TARGETS ${PROJECT_NAME} DESTINATION bin)
