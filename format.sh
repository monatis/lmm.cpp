#/bin/bash
find . -type f \( -name '*.cpp' -o -name '*.hpp' -o -name '*.c' -o -name '*.h' \) ! -path "./llama.cpp/*" ! -path "./build/*" -exec clang-format -i {} +
