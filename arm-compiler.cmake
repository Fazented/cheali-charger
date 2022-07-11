
SET(CTUNING "-funsigned-char -funsigned-bitfields -fshort-enums")

SET(CFLAGS "-mthumb -mcpu=cortex-m0  ${CTUNING} -Os  -Wall -g -std=c11")
SET(CXXFLAGS "-mthumb -mcpu=cortex-m0  ${CTUNING} -Os  -Wall -g -fno-rtti -fno-exceptions -std=c++11")
SET(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   ${CFLAGS}   -ffunction-sections -fdata-sections")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CXXFLAGS} -ffunction-sections -fdata-sections")

set(CMAKE_EXE_LINKER_FLAGS "-Wl,--gc-sections")
