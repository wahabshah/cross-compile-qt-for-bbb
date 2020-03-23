#!/bin/bash

echo "Building Application using QMake"

WORKSPACE="/workspace"
SYSROOT="${WORKSPACE}/sysroot"

cd /App
rm -rf build_cross || true
mkdir -p build_cross
cd build_cross

export PATH=/workspace/OUTPUT/qt5host/bin:$PATH

QMAKE_COMMAND="qmake .."

echo "$QMAKE_COMMAND"

# call
      $QMAKE_COMMAND

make -j`nproc`  VERBOSE=1