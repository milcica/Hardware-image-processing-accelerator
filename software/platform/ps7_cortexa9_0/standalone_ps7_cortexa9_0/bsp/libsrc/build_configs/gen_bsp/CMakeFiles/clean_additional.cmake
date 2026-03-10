# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/kowalski/Desktop/ETF/CETVRTA-GODINA/DVS/dvs25_projekat_g6/software/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/sleep.h"
  "/home/kowalski/Desktop/ETF/CETVRTA-GODINA/DVS/dvs25_projekat_g6/software/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xiltimer.h"
  "/home/kowalski/Desktop/ETF/CETVRTA-GODINA/DVS/dvs25_projekat_g6/software/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xtimer_config.h"
  "/home/kowalski/Desktop/ETF/CETVRTA-GODINA/DVS/dvs25_projekat_g6/software/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/lib/libxiltimer.a"
  )
endif()
