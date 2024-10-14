# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/teja/pico/pico-sdk/tools/pioasm"
  "/home/teja/pico/JTAGprobe/build/pioasm"
  "/home/teja/pico/JTAGprobe/build/pioasm-install"
  "/home/teja/pico/JTAGprobe/build/pico-sdk/src/rp2_common/tinyusb/pioasm/tmp"
  "/home/teja/pico/JTAGprobe/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/pioasmBuild-stamp"
  "/home/teja/pico/JTAGprobe/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src"
  "/home/teja/pico/JTAGprobe/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/pioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/teja/pico/JTAGprobe/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/pioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/teja/pico/JTAGprobe/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/pioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
