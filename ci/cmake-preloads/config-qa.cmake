set (BUILD_TESTING ON CACHE BOOL "qa default") 
set (CMAKE_VERBOSE_MAKEFILE ON CACHE BOOL "preload")
set (ENABLE_WARNING_VERBOSE ON CACHE BOOL "preload")
set (WITH_MANPAGES ON CACHE BOOL "qa default") 
set (WITH_SAMPLE ON CACHE BOOL "qa default") 
set (WITH_SERVER ON CACHE BOOL "qa default")
set (WITH_SHADOW ON CACHE BOOL "qa default")
set (WITH_PROXY ON CACHE BOOL "qa default")
set (WITH_PULSE ON CACHE BOOL "qa default")
set (WITH_CUPS ON CACHE BOOL "qa default")
set (WITH_OPENCL ON CACHE BOOL "qa default")
set (WITH_PCSC ON  CACHE BOOL "qa default")
set (WITH_SOXR ON  CACHE BOOL "qa default")
set (WITH_SSE2 ON  CACHE BOOL "qa default")
set (WITH_NEON ON  CACHE BOOL "qa default")
set (WITH_SWSCALE ON  CACHE BOOL "qa default")
set (WITH_DSP_FFMPEG ON CACHE BOOL "qa default")
set (WITH_FFMPEG ON CACHE BOOL "qa default")
set (WITH_SANITIZE_ADDRESS ON CACHE BOOL "qa default")
set (WITH_WINPR_UTILS_IMAGE_JPEG ON  CACHE BOOL "qa default")
set (WITH_WINPR_UTILS_IMAGE_WEBP ON  CACHE BOOL "qa default")
set (WITH_WINPR_UTILS_IMAGE_PNG ON  CACHE BOOL "qa default")
set (CHANNEL_RDPECAM ON CACHE BOOL "qa default")
set (CHANNEL_RDPECAM_CLIENT ON CACHE BOOL "qa default")
set (CHANNEL_RDPEAR ON CACHE BOOL "qa default")
set (CHANNEL_RDPEAR_CLIENT ON CACHE BOOL "qa default")

set (BUILD_WITH_CLANG_TIDY ON CACHE BOOL "qa default")

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/ClangDetectTool.cmake)
clang_detect_tool(CLANG_EXE clang REQUIRED)
clang_detect_tool(CLANG_XX_EXE clang++ REQUIRED)

set (CMAKE_C_COMPILER "${CLANG_EXE}" CACHE STRING "qa default")
set (CMAKE_CXX_COMPILER "${CLANG_XX_EXE}" CACHE STRING "qa default")