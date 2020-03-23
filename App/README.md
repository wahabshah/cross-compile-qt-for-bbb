
# arm (qmake)

arm-linux-gnueabihf-g++ -c -pipe -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mthumb -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mthumb -mfloat-abi=hard --sysroot=/workspace/sysroot -O2 -O3 -std=gnu++1y -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_GUI_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -I/App -I. -I/workspace/OUTPUT/qt5/include -I/workspace/OUTPUT/qt5/include/QtQuick -I/workspace/OUTPUT/qt5/include/QtGui -I/workspace/OUTPUT/qt5/include/QtQml -I/workspace/OUTPUT/qt5/include/QtNetwork -I/workspace/OUTPUT/qt5/include/QtCore -I. -I/workspace/OUTPUT/qt5host/mkspecs/devices/linux-beagleboard-g++ -o main.o ../main.cpp

/workspace/OUTPUT/qt5host/bin/rcc -name qml ../qml.qrc -o qrc_qml.cpp

arm-linux-gnueabihf-g++ -c -pipe -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mthumb -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mthumb -mfloat-abi=hard --sysroot=/workspace/sysroot -O2 -O3 -std=gnu++1y -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_GUI_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -I/App -I. -I/workspace/OUTPUT/qt5/include -I/workspace/OUTPUT/qt5/include/QtQuick -I/workspace/OUTPUT/qt5/include/QtGui -I/workspace/OUTPUT/qt5/include/QtQml -I/workspace/OUTPUT/qt5/include/QtNetwork -I/workspace/OUTPUT/qt5/include/QtCore -I. -I/workspace/OUTPUT/qt5host/mkspecs/devices/linux-beagleboard-g++ -o qrc_qml.o qrc_qml.cpp

arm-linux-gnueabihf-g++ -mfloat-abi=hard --sysroot=/workspace/sysroot -Wl,-O1 -Wl,-rpath,/usr/local/qt5/lib -o scratchpad main.o qrc_qml.o   -L/workspace/OUTPUT/qt5/lib -lQt5Quick -lQt5Gui -lQt5Qml -lQt5Network -lQt5Core -lrt -ldl -L/workspace/sysroot/usr/lib/arm-linux-gnueabihf -lGLESv2 -lpthread

# arm(cmake)

Building Application using CMake
cmake   -DCMAKE_TOOLCHAIN_FILE=/scripts/Toolchain-arm-linux-gnueabihf.cmake   -DCMAKE_BUILD_TYPE=Debug   -DCMAKE_CXX_FLAGS_DEBUG=-ggdb   -DCMAKE_EXPORT_COMPILE_COMMANDS=ON   -DCMAKE_INSTALL_PREFIX=/usr   -DCMAKE_PREFIX_PATH=/workspace/OUTPUT/qt5/lib/cmake   -DCMAKE_CXX_FLAGS=-Wl,-rpath,/usr/local/qt5/lib   ..
-- The CXX compiler identification is GNU 6.3.0
-- Check for working CXX compiler: /usr/bin/arm-linux-gnueabihf-g++
-- Check for working CXX compiler: /usr/bin/arm-linux-gnueabihf-g++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /App/build_cross_cmake
/usr/bin/cmake -H/App -B/App/build_cross_cmake --check-build-system CMakeFiles/Makefile.cmake 0
/usr/bin/cmake -E cmake_progress_start /App/build_cross_cmake/CMakeFiles /App/build_cross_cmake/CMakeFiles/progress.marks
make -f CMakeFiles/Makefile2 all
make[1]: Entering directory '/App/build_cross_cmake'
make -f CMakeFiles/scratchpadcmake_automoc.dir/build.make CMakeFiles/scratchpadcmake_automoc.dir/depend
make[2]: Entering directory '/App/build_cross_cmake'
cd /App/build_cross_cmake && /usr/bin/cmake -E cmake_depends "Unix Makefiles" /App /App /App/build_cross_cmake /App/build_cross_cmake /App/build_cross_cmake/CMakeFiles/scratchpadcmake_automoc.dir/DependInfo.cmake --color=
Dependee "/App/build_cross_cmake/CMakeFiles/scratchpadcmake_automoc.dir/DependInfo.cmake" is newer than depender "/App/build_cross_cmake/CMakeFiles/scratchpadcmake_automoc.dir/depend.internal".
Dependee "/App/build_cross_cmake/CMakeFiles/CMakeDirectoryInformation.cmake" is newer than depender "/App/build_cross_cmake/CMakeFiles/scratchpadcmake_automoc.dir/depend.internal".
Scanning dependencies of target scratchpadcmake_automoc
make[2]: Leaving directory '/App/build_cross_cmake'
make -f CMakeFiles/scratchpadcmake_automoc.dir/build.make CMakeFiles/scratchpadcmake_automoc.dir/build
make[2]: Entering directory '/App/build_cross_cmake'
[ 20%] Automatic moc and rcc for target scratchpadcmake
/usr/bin/cmake -E cmake_autogen /App/build_cross_cmake/CMakeFiles/scratchpadcmake_automoc.dir/ Debug
AUTOGEN: Checking /App/main.cpp
Generating moc compilation scratchpadcmake_automoc.cpp
Generating qrc source scratchpadcmake_automoc.dir/qrc_qml_MDHIZXVMUCSDDN.cpp
/workspace/OUTPUT/qt5host/bin/rcc -name qml -o /App/build_cross_cmake/scratchpadcmake_automoc.dir/qrc_qml_MDHIZXVMUCSDDN.cpp /App/qml.qrc
make[2]: Leaving directory '/App/build_cross_cmake'
[ 20%] Built target scratchpadcmake_automoc
make -f CMakeFiles/scratchpadcmake.dir/build.make CMakeFiles/scratchpadcmake.dir/depend
make[2]: Entering directory '/App/build_cross_cmake'
cd /App/build_cross_cmake && /usr/bin/cmake -E cmake_depends "Unix Makefiles" /App /App /App/build_cross_cmake /App/build_cross_cmake /App/build_cross_cmake/CMakeFiles/scratchpadcmake.dir/DependInfo.cmake --color=
Dependee "/App/build_cross_cmake/CMakeFiles/scratchpadcmake.dir/DependInfo.cmake" is newer than depender "/App/build_cross_cmake/CMakeFiles/scratchpadcmake.dir/depend.internal".
Dependee "/App/build_cross_cmake/CMakeFiles/CMakeDirectoryInformation.cmake" is newer than depender "/App/build_cross_cmake/CMakeFiles/scratchpadcmake.dir/depend.internal".
Scanning dependencies of target scratchpadcmake
make[2]: Leaving directory '/App/build_cross_cmake'
make -f CMakeFiles/scratchpadcmake.dir/build.make CMakeFiles/scratchpadcmake.dir/build
make[2]: Entering directory '/App/build_cross_cmake'
[ 60%] Building CXX object CMakeFiles/scratchpadcmake.dir/scratchpadcmake_automoc.dir/qrc_qml_MDHIZXVMUCSDDN.cpp.o
[ 60%] Building CXX object CMakeFiles/scratchpadcmake.dir/scratchpadcmake_automoc.cpp.o
/usr/bin/arm-linux-gnueabihf-g++  --sysroot=/workspace/sysroot  -DQT_CORE_LIB -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_QML_LIB -DQT_QUICK_LIB -I/App/build_cross_cmake -I/App -isystem /workspace/OUTPUT/qt5/include -isystem /workspace/OUTPUT/qt5/include/QtCore -isystem /workspace/OUTPUT/qt5/../qt5host/mkspecs/devices/linux-beagleboard-g++ -isystem /workspace/OUTPUT/qt5/include/QtQuick -isystem /workspace/OUTPUT/qt5/include/QtGui -isystem /workspace/OUTPUT/qt5/include/QtQml -isystem /workspace/OUTPUT/qt5/include/QtNetwork  -Wl,-rpath,/usr/local/qt5/lib -ggdb   -fPIC -std=gnu++11 -o CMakeFiles/scratchpadcmake.dir/scratchpadcmake_automoc.cpp.o -c /App/build_cross_cmake/scratchpadcmake_automoc.cpp
/usr/bin/arm-linux-gnueabihf-g++  --sysroot=/workspace/sysroot  -DQT_CORE_LIB -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_QML_LIB -DQT_QUICK_LIB -I/App/build_cross_cmake -I/App -isystem /workspace/OUTPUT/qt5/include -isystem /workspace/OUTPUT/qt5/include/QtCore -isystem /workspace/OUTPUT/qt5/../qt5host/mkspecs/devices/linux-beagleboard-g++ -isystem /workspace/OUTPUT/qt5/include/QtQuick -isystem /workspace/OUTPUT/qt5/include/QtGui -isystem /workspace/OUTPUT/qt5/include/QtQml -isystem /workspace/OUTPUT/qt5/include/QtNetwork  -Wl,-rpath,/usr/local/qt5/lib -ggdb   -fPIC -std=gnu++11 -o CMakeFiles/scratchpadcmake.dir/scratchpadcmake_automoc.dir/qrc_qml_MDHIZXVMUCSDDN.cpp.o -c /App/build_cross_cmake/scratchpadcmake_automoc.dir/qrc_qml_MDHIZXVMUCSDDN.cpp
[ 80%] Building CXX object CMakeFiles/scratchpadcmake.dir/main.cpp.o
/usr/bin/arm-linux-gnueabihf-g++  --sysroot=/workspace/sysroot  -DQT_CORE_LIB -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_QML_LIB -DQT_QUICK_LIB -I/App/build_cross_cmake -I/App -isystem /workspace/OUTPUT/qt5/include -isystem /workspace/OUTPUT/qt5/include/QtCore -isystem /workspace/OUTPUT/qt5/../qt5host/mkspecs/devices/linux-beagleboard-g++ -isystem /workspace/OUTPUT/qt5/include/QtQuick -isystem /workspace/OUTPUT/qt5/include/QtGui -isystem /workspace/OUTPUT/qt5/include/QtQml -isystem /workspace/OUTPUT/qt5/include/QtNetwork  -Wl,-rpath,/usr/local/qt5/lib -ggdb   -fPIC -std=gnu++11 -o CMakeFiles/scratchpadcmake.dir/main.cpp.o -c /App/main.cpp
[100%] Linking CXX executable scratchpadcmake
/usr/bin/cmake -E cmake_link_script CMakeFiles/scratchpadcmake.dir/link.txt --verbose=1
/usr/bin/arm-linux-gnueabihf-g++  --sysroot=/workspace/sysroot  -Wl,-rpath,/usr/local/qt5/lib -ggdb   CMakeFiles/scratchpadcmake.dir/main.cpp.o CMakeFiles/scratchpadcmake.dir/scratchpadcmake_automoc.cpp.o CMakeFiles/scratchpadcmake.dir/scratchpadcmake_automoc.dir/qrc_qml_MDHIZXVMUCSDDN.cpp.o  -o scratchpadcmake -Wl,-rpath,/workspace/OUTPUT/qt5/lib -rdynamic /workspace/OUTPUT/qt5/lib/libQt5Quick.so.5.10.1 /workspace/OUTPUT/qt5/lib/libQt5Gui.so.5.10.1 /workspace/OUTPUT/qt5/lib/libQt5Qml.so.5.10.1 /workspace/OUTPUT/qt5/lib/libQt5Network.so.5.10.1 /workspace/OUTPUT/qt5/lib/libQt5Core.so.5.10.1 
make[2]: Leaving directory '/App/build_cross_cmake'
[100%] Built target scratchpadcmake
make[1]: Leaving directory '/App/build_cross_cmake'
/usr/bin/cmake -E cmake_progress_start /App/build_cross_cmake/CMakeFiles 0

# amd64 (qmake)

g++ -c -pipe -O2 -std=gnu++1y -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_GUI_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -I../../App -I. -I/opt/Qt5.10.1/5.10.1/gcc_64/include -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtQuick -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtGui -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtQml -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtNetwork -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtCore -I. -isystem /usr/include/libdrm -I/opt/Qt5.10.1/5.10.1/gcc_64/mkspecs/linux-g++ -o main.o ../main.cpp

/opt/Qt5.10.1/5.10.1/gcc_64/bin/rcc -name qml ../qml.qrc -o qrc_qml.cpp

g++ -c -pipe -O2 -std=gnu++1y -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_GUI_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -I../../App -I. -I/opt/Qt5.10.1/5.10.1/gcc_64/include -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtQuick -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtGui -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtQml -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtNetwork -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtCore -I. -isystem /usr/include/libdrm -I/opt/Qt5.10.1/5.10.1/gcc_64/mkspecs/linux-g++ -o qrc_qml.o qrc_qml.cpp

g++ -Wl,-O1 -Wl,-rpath,/opt/Qt5.10.1/5.10.1/gcc_64/lib -o scratchpad main.o qrc_qml.o   -L/opt/Qt5.10.1/5.10.1/gcc_64/lib -lQt5Quick -lQt5Gui -lQt5Qml -lQt5Network -lQt5Core -lGL -lpthread 