#!/bin/bash

echo "Building Application using CMake"

WORKSPACE="/workspace"
SYSROOT="${WORKSPACE}/sysroot"
OUTPUT="${WORKSPACE}/OUTPUT"
OUTPUT_QT5="${OUTPUT}/qt5"

cd /App
rm -rf build_cross_cmake || true
mkdir -p build_cross_cmake
cd build_cross_cmake

export PATH=/workspace/OUTPUT/qt5host/bin:$PATH

CMAKE_COMMAND="cmake \
  -DCMAKE_TOOLCHAIN_FILE=/scripts/Toolchain-arm-linux-gnueabihf.cmake \
  -DCMAKE_BUILD_TYPE=Debug \
  -DCMAKE_CXX_FLAGS_DEBUG=-ggdb \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
  -DCMAKE_INSTALL_PREFIX=/usr \
  -DCMAKE_PREFIX_PATH="${OUTPUT_QT5}"/lib/cmake \
  -DCMAKE_CXX_FLAGS=-Wl,-rpath,/usr/local/qt5/lib \
  .."

echo "$CMAKE_COMMAND"

# call
      $CMAKE_COMMAND

make -j`nproc` VERBOSE=1
