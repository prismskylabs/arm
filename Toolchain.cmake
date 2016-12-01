set(_target_name arm-linux-gnueabihf)
set(_target_root ${CMAKE_CURRENT_LIST_DIR}/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf)

set(CROSS_COMPILE_PREFIX ${_target_root}/bin/${_target_name}-)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -march=armv7-a -mthumb-interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a9 -mfloat-abi=hard -O2")
set(CMAKE_CXX_FLAGS ${CMAKE_C_FLAGS})

set(CMAKE_C_COMPILER ${CROSS_COMPILE_PREFIX}gcc)
set(CMAKE_CXX_COMPILER ${CROSS_COMPILE_PREFIX}g++)

set(CMAKE_FIND_ROOT_PATH ${_target_root}/${_target_name}/libc)

if(CCACHE)
    set(CMAKE_C_COMPILER ${CCACHE} ${CMAKE_C_COMPILER})
    set(CMAKE_CXX_COMPILER ${CCACHE} ${CMAKE_CXX_COMPILER})
endif()
