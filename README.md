# JTAGprobe
A fork of opensource version of **debugprobe** built on RASPBERRY pico.It is completely modified to work with JTAG and SWD. This doesnot use  FIFO and PIO functionality of **debugprobe** but uses  standard ARM CMSIS-DAP.

This supports both **JTAG & SWD** for debugging using OpenOCD, Hence the name **JTAGprobe**

___
The following is **GPIO pinout** for JTAG/SWD 





| GPIO       | Pinout  |
| --------   | ------- |
| SWCLK_TCK  | 19      |
| SWDIO_TMS  | 14      |
| TDI        | 18      |
| TDO        | 21      |
| nTRST      | 15      |
| nRESET     | 16      |

You can download **UF2** file or download entirre code and build it.