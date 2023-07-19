cmake_minimum_required(VERSION 3.12)
project(llava.cpp)

# Add "llama.cpp" submodule
add_subdirectory(llama.cpp)

# Add "clip.cpp" library
add_library(clip clip.cpp clip.h)
target_link_libraries(clip PRIVATE ggml)

# Add target executable/library for llava.cpp
add_executable(llava main.cpp)

# Link against clip and llama libs
target_link_libraries(llava clip llama)

# Include directories for llava
target_include_directories(llava PRIVATE
    .
    ${CMAKE_CURRENT_SOURCE_DIR}/llama.cpp
)
