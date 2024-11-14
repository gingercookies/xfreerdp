set(CMAKE_C_COMPILER i686-w64-mingw32-gcc)
set(CMAKE_CXX_COMPILER i686-w64-mingw32-g++)
set(CMAKE_FIND_ROOT_PATH /usr/i686-w64-mingw32)

execute_process(COMMAND which i686-w64-mingw32-windres OUTPUT_VARIABLE TOOLCHAIN_RC_COMPILER)
execute_process(COMMAND which i686-w64-mingw32-dlltool OUTPUT_VARIABLE TOOLCHAIN_DLLTOOL)

string(STRIP ${TOOLCHAIN_RC_COMPILER} TOOLCHAIN_RC_COMPILER)
set(CMAKE_RC_COMPILER ${TOOLCHAIN_RC_COMPILER})

string(STRIP ${TOOLCHAIN_DLLTOOL} TOOLCHAIN_DLLTOOL)
set(DLLTOOL ${TOOLCHAIN_DLLTOOL})

set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_SYSTEM_NAME Windows)