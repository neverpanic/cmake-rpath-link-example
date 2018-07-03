#!/usr/bin/env sh
set -e

rm -rf build && mkdir -p build
cd build && cmake -GNinja -DCMAKE_CXX_FLAGS="--sysroot=/nonexistant" ..
