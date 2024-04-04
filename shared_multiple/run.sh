#!/bin/sh
if test -d ./build; then
  rm -rf build
fi

cmake -G Ninja -B build -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DCMAKE_BUILD_TYPE=Release
ninja -C build
./build/demos/main
