message(STATUS "EverSdk: Setting up...")

################################################################################

set(CMAKE_INTERPROCEDURAL_OPTIMIZATION ${EM_ENABLE_OPTIMIZING})
if(NOT EM_ENABLE_OPTIMIZING)
    set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "" FORCE)
elseif(EM_ENABLE_DEBUGGING)
    set(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "" FORCE)
else()
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "" FORCE)
endif()

################################################################################

if(NOT EM_SDK)
    list(APPEND CMAKE_PREFIX_PATH "$ENV{EVER_SDK_ROOT}/install/${EM_PRESET}")
    find_package(EverSdk REQUIRED)
endif()

################################################################################
