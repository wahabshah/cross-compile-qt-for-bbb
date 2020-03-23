#!/bin/bash

echo "Building Qt"

WORKSPACE="/workspace"
SYSROOT="${WORKSPACE}/sysroot"
SCRIPTS="/scripts"

### START_SOURCES #####
SOURCES="${WORKSPACE}/SOURCES"
rm -rf "${SOURCES}"
mkdir -p "${SOURCES}"

cd "${WORKSPACE}"
wget https://ftp.osuosl.org/pub/blfs/conglomeration/qt5/qt-everywhere-src-5.10.1.tar.xz
tar xf qt-everywhere-src-5.10.1.tar.xz -C "${SOURCES}" --strip-components=1
cd "${SOURCES}"
git init
git add .
git commit -m "initial commit after unzipping source"
### END_SOURCES #####

# START RELATIVEPATHS
/scripts/sysroot-relativelinks.py "${SYSROOT}"
# END RELATIVEPATHS

# START CONFIGURE

BUILD="${WORKSPACE}/BUILD"
OUTPUT="${WORKSPACE}/OUTPUT"

rm -rf "${BUILD}"
mkdir -p "${BUILD}"

cd "${BUILD}"

"${SOURCES}"/configure \
-sysroot "${SYSROOT}" \
-platform linux-g++ \
-device linux-beagleboard-g++ -device-option CROSS_COMPILE=arm-linux-gnueabihf- \
-prefix /usr/local/qt5 \
-extprefix "${OUTPUT}/qt5" \
-hostprefix "${OUTPUT}/qt5host" \
-release \
-opengl es2 \
-opensource \
-confirm-license \
-make libs \
-skip qtwebengine \
-skip qtwebview \
-v

# END CONFIGURE


# START MAKE

cd "${BUILD}"
make -j"$(nproc)"

# END MAKE

# START MAKEINSTALL

rm -rf "${OUTPUT}"
mkdir -p "${OUTPUT}"

cd "${BUILD}"
make install

# END MAKEINSTALL