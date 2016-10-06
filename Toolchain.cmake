set(_target_name arm-linux-gnueabihf)
set(_target_root ${CMAKE_CURRENT_LIST_DIR}/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mfloat-abi=hard -mfpu=neon -mcpu=cortex-a9 -O2")
set(CMAKE_CXX_FLAGS ${CMAKE_C_FLAGS})

set(CMAKE_C_COMPILER ${_target_root}/bin/${_target_name}-gcc)
set(CMAKE_CXX_COMPILER ${_target_root}/bin/${_target_name}-g++)
set(CMAKE_INCLUDE_PATH ${_target_root}/${_target_name}/include)
set(CMAKE_LIBRARY_PATH ${_target_root}/${_target_name}/lib)

if(CCACHE)
    set(CMAKE_C_COMPILER ${CCACHE} ${CMAKE_C_COMPILER})
    set(CMAKE_CXX_COMPILER ${CCACHE} ${CMAKE_CXX_COMPILER})
endif()
