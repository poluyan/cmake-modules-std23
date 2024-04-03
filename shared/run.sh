#!/bin/sh
if test -d ./build; then
  rm -rf build
fi
#add_compile_options(-fmodules -fbuiltin-module-map)
export CFLAGS="-stdlib=libc++ -fmodules -fbuiltin-module-map"
cmake -G Ninja -B build -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DCMAKE_CXX_FLAGS:STRING="$CFLAGS" -DCMAKE_BUILD_TYPE=Release
ninja -C build
./build/calculator
