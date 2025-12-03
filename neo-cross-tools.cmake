# sources: 
#   https://blog.kitware.com/cross-compiling-for-raspberry-pi/
#   https://gitlab.kitware.com/cmake/community/-/wikis/doc/cmake/CrossCompiling

# this one is important
SET(CMAKE_SYSTEM_NAME Linux)

#this one not so much
SET(CMAKE_SYSTEM_VERSION 1)

# specify the cross compiler
SET(CMAKE_C_COMPILER   C:/SysGCC/raspberry/bin/arm-linux-gnueabihf-gcc.exe)
SET(CMAKE_CXX_COMPILER C:/SysGCC/raspberry/bin/arm-linux-gnueabihf-g++.exe)

# where is the target environment
SET(CMAKE_FIND_ROOT_PATH C:/SysGCC/raspberry)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_SYSROOT C:/SysGCC/raspberry/arm-linux-gnueabihf/sysroot)

include_directories(C:/SysGCC/nanopi-neo/include)

# иногда не работает: link_directories(C:/SysGCC/nanopi-neo/lib)
list(APPEND TBB_LIBS C:/SysGCC/nanopi-neo/lib/libtbb.so C:/SysGCC/nanopi-neo/lib/libtbbmalloc.so)
list(APPEND MODBUS_LIB C:/SysGCC/nanopi-neo/lib/libmodbus.so.5)
list(APPEND USB_LIB C:/SysGCC/nanopi-neo/lib/libusb-1.0.so)
list(APPEND CPP_HTTP_LIB C:/SysGCC/nanopi-neo/lib/libcpp-httplib.so)

file(GLOB files ${CMAKE_CURRENT_LIST_DIR}/nanopi-neo/lib/libsfml*)
list(APPEND SFML_LIBS ${files})

file(GLOB files ${CMAKE_CURRENT_LIST_DIR}/nanopi-neo/lib/libtgui*)
list(APPEND TGUI_LIBS ${files})


