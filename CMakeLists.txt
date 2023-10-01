cmake_minimum_required(VERSION 3.12)
project(lmm.cpp)

# Add "llama.cpp" submodule
add_subdirectory(llama.cpp llama.cpp/common)

# Add "clip.cpp" library
add_library(clip clip.cpp clip.h)
target_link_libraries(clip PRIVATE ggml)

# Add target executable/library for main
add_executable(main main.cpp)

# Link against clip and llama libs
target_link_libraries(main clip llama common)

# Include directories for lmm
target_include_directories(main PRIVATE
    .
    ${CMAKE_CURRENT_SOURCE_DIR}/llama.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/llama.cpp/common
)
