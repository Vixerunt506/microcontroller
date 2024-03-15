
/******************** (C) COPYRIGHT 2021 STMicroelectronics ********************
* File Name          : BLE_Throughput_main.c
* Author             : RF Application Team
* Version            : 1.1.0
* Date               : 09-February-2016
* Description        : Code demostrating the BLE Throughput applications
********************************************************************************
* THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
* WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
* AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
* INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
* CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
* INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
*******************************************************************************/

/**
 * @file BLE_Throughput_main.c
 * @brief This is a Throughput demo that shows how to implement a simple throughput test  between two BlueNRG-1,2 devices.
 * Two throughput test options are available: 
 * unidirectional (server notification to client side); 
 * bidirectional (server notification to client side and write without response from client to server side).
 * 

* \section WiSE-Studio_project WiSE-Studio project
  To use the project with WiSE-Studio , please follow the instructions below:
  -# Open the WiSE-Studio  and select File->Import. 
  -# Select Existing Projects into Workspace. 
  -# Go to Project Explorer section
  -# Select desired configuration to build from Project->Project->Build Project.
  -# Select Project->Rebuild All. This will recompile and link the entire application
  -# To download the binary image, please connect a SWD HW programmer in your board (if available).
  -# Download the related binary image.
  -# Alternatively, open the Flasher Utility, put the board in bootloader mode and download the built binary image.

* \section KEIL_project KEIL project
  To use the project with KEIL uVision 5 for ARM, please follow the instructions below:
  -# Open the KEIL uVision 5 for ARM and select Project->Open Project menu. 
  -# Open the KEIL project
     <tt> C:\Users\{username}\ST\BlueNRG-1_2 DK x.x.x\\Project\\BLE_Examples\\BLE_Throughput\\MDK-ARM\\BlueNRG-1\\BLE_Throughput.uvprojx </tt> or
     <tt> C:\Users\{username}\ST\BlueNRG-1_2 DK x.x.x\\Project\\BLE_Examples\\BLE_Throughput\\MDK-ARM\\BlueNRG-2\\BLE_Throughput.uvprojx </tt>
  -# Select desired configuration to build
  -# Select Project->Rebuild all target files. This will recompile and link the entire application
  -# To download the binary image, please connect a SWD HW programmer in your board (if available).
  -# Download the related binary image.
  -# Alternatively, open the Flasher Utility, put the board in bootloader mode and download the built binary image.

* \section IAR_project IAR project
  To use the project with IAR Embedded Workbench for ARM, please follow the instructions below:
  -# Open the Embedded Workbench for ARM and select File->Open->Workspace menu. 
  -# Open the IAR project
     <tt> C:\Users\{username}\ST\BlueNRG-1_2 DK x.x.x\\Project\\BLE_Examples\\BLE_Throughput\\EWARM\\BlueNRG-1\\BLE_Throughput.eww </tt> or
     <tt> C:\Users\{username}\ST\BlueNRG-1_2 DK x.x.x\\Project\\BLE_Examples\\BLE_Throughput\\EWARM\\BlueNRG-2\\BLE_Throughput.eww </tt>
  -# Select desired configuration to build
  -# Select Project->Rebuild All. This will recompile and link the entire application
  -# To download the binary image, please connect a SWD HW programmer in your board (if available).
  -# Select Project->Download and Debug to download the related binary image.
  -# Alternatively, open the Flasher Utility, put the board in bootloader mode and download the built binary image.

* \subsection Project_configurations Project configurations
- \c Client_bidirectional - Client role configuration for bidirectional throughput test
- \c Client_unidirectional - Client role configuration for unidirectional throughput test
- \c Server_bidirectional - Server role configuration for bidirectional throughput test
- \c Server_unidirectional - Server role configuration for unidirectional throughput test


* \section Board_supported Boards supported
- \c STEVAL-IDB007V1
- \c STEVAL-IDB007V2
- \c STEVAL-IDB008V1
- \c STEVAL-IDB008V1M
- \c STEVAL-IDB008V2
- \c STEVAL-IDB009V1


* \section Power_settings Power configuration settings
@table

==========================================================================================================
|                                         STEVAL-IDB00XV1                                                |
----------------------------------------------------------------------------------------------------------
| Jumper name |            |  Description                                                                |
| JP1         |   JP2      |                                                                             |
----------------------------------------------------------------------------------------------------------
| ON 1-2      | ON 2-3     | USB supply power                                                            |
| ON 2-3      | ON 1-2     | The supply voltage must be provided through battery pins.                   |
| ON 1-2      |            | USB supply power to STM32L1, JP2 pin 2 external power to BlueNRG1           |


@endtable 

* \section Jumper_settings Jumper settings
@table

========================================================================================================================================================================================
|                                                                             STEVAL-IDB00XV1                                                                                          |
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| Jumper name |                                                                Description                                                                                             |
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------          
| JP1         | 1-2: to provide power from USB (JP2:2-3). 2-3: to provide power from battery holder (JP2:1-2)                                                                          |          
| JP2         | 1-2: to provide power from battery holder (JP1:2-3). 2-3: to provide power from USB (JP1:1-2). Pin2 to VDD  to provide external power supply to BlueNRG-1 (JP1: 1-2)   |
| JP3         | pin 1 and 2 UART RX and TX of MCU. pin 3 GND.                                                                                                                          |          
| JP4         | Fitted: to provide VBLUE to BlueNRG1. It can be used also for current measurement.                                                                                     |
| JP5         | Fitted : TEST pin to VBLUE. Not fitted:  TEST pin to GND                                                                                                               |


@endtable
                        
* \section Pin_settings Pin settings
@table
|            |                                                                      Client_unidirectional                                                                      ||||||                                                                      Server_unidirectional                                                                      ||||||                                                                Client_bidirectional                                                                 ||||||                                                                Server_bidirectional                                                                 ||||||
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|  PIN name  |      STEVAL-IDB007V1     |      STEVAL-IDB007V2     |      STEVAL-IDB008V1     |     STEVAL-IDB008V1M     |      STEVAL-IDB008V2     |      STEVAL-IDB009V1     |      STEVAL-IDB007V1     |      STEVAL-IDB007V2     |      STEVAL-IDB008V1     |     STEVAL-IDB008V1M     |      STEVAL-IDB008V2     |      STEVAL-IDB009V1     |     STEVAL-IDB007V1    |     STEVAL-IDB007V2    |     STEVAL-IDB008V1    |    STEVAL-IDB008V1M    |     STEVAL-IDB008V2    |     STEVAL-IDB009V1    |     STEVAL-IDB007V1    |     STEVAL-IDB007V2    |     STEVAL-IDB008V1    |    STEVAL-IDB008V1M    |     STEVAL-IDB008V2    |     STEVAL-IDB009V1    |
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|    ADC1    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|    ADC2    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|     GND    |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |
|     IO0    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|     IO1    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|    IO11    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|    IO12    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|    IO13    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|    IO14    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|    IO15    |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |
|    IO16    |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |
|    IO17    |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |
|    IO18    |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |
|    IO19    |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |
|     IO2    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|    IO20    |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |
|    IO21    |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |
|    IO22    |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |
|    IO23    |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |
|    IO24    |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |
|    IO25    |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |
|     IO3    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|     IO4    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|     IO5    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|     IO6    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|     IO7    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|     IO8    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|   RESETN   |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |
|    TEST1   |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|    VBLUE   |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |           N.A.           |           N.A.           |           N.A.           |         Not Used         |           N.A.           |           N.A.           |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |          N.A.          |          N.A.          |          N.A.          |        Not Used        |          N.A.          |          N.A.          |

@endtable 

* \section Serial_IO Serial I/O
 
@table
| Parameter name  | Value               | Unit      |
------------------------------------------------------
| Baudrate        | 921600              |  bit/sec  |
| Data bits       | 8                   | bit       |
| Parity          | None                | bit       |
| Stop bits       | 1                   | bit       |
@endtable

* \section LEDs_description LEDs description
@table
|            |                                                                      Client_unidirectional                                                                      ||||||                                                                      Server_unidirectional                                                                      ||||||                                                                Client_bidirectional                                                                 ||||||                                                                Server_bidirectional                                                                 ||||||
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|  LED name  |      STEVAL-IDB007V1     |      STEVAL-IDB007V2     |      STEVAL-IDB008V1     |     STEVAL-IDB008V1M     |      STEVAL-IDB008V2     |      STEVAL-IDB009V1     |      STEVAL-IDB007V1     |      STEVAL-IDB007V2     |      STEVAL-IDB008V1     |     STEVAL-IDB008V1M     |      STEVAL-IDB008V2     |      STEVAL-IDB009V1     |     STEVAL-IDB007V1    |     STEVAL-IDB007V2    |     STEVAL-IDB008V1    |    STEVAL-IDB008V1M    |     STEVAL-IDB008V2    |     STEVAL-IDB009V1    |     STEVAL-IDB007V1    |     STEVAL-IDB007V2    |     STEVAL-IDB008V1    |    STEVAL-IDB008V1M    |     STEVAL-IDB008V2    |     STEVAL-IDB009V1    |
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|     DL1    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|     DL2    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|     DL3    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|     DL4    |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |

@endtable


* \section Buttons_description Buttons description
@table
|                |                                                                      Client_unidirectional                                                                      ||||||                                                                      Server_unidirectional                                                                      ||||||                                                                Client_bidirectional                                                                 ||||||                                                                Server_bidirectional                                                                 ||||||
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|   BUTTON name  |      STEVAL-IDB007V1     |      STEVAL-IDB007V2     |      STEVAL-IDB008V1     |     STEVAL-IDB008V1M     |      STEVAL-IDB008V2     |      STEVAL-IDB009V1     |      STEVAL-IDB007V1     |      STEVAL-IDB007V2     |      STEVAL-IDB008V1     |     STEVAL-IDB008V1M     |      STEVAL-IDB008V2     |      STEVAL-IDB009V1     |     STEVAL-IDB007V1    |     STEVAL-IDB007V2    |     STEVAL-IDB008V1    |    STEVAL-IDB008V1M    |     STEVAL-IDB008V2    |     STEVAL-IDB009V1    |     STEVAL-IDB007V1    |     STEVAL-IDB007V2    |     STEVAL-IDB008V1    |    STEVAL-IDB008V1M    |     STEVAL-IDB008V2    |     STEVAL-IDB009V1    |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|      PUSH1     |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|      PUSH2     |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |         Not Used         |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |        Not Used        |
|      RESET     |      Reset BlueNRG1      |      Reset BlueNRG1      |      Reset BlueNRG2      |      Reset BlueNRG2      |      Reset BlueNRG2      |      Reset BlueNRG2      |      Reset BlueNRG1      |      Reset BlueNRG1      |      Reset BlueNRG2      |      Reset BlueNRG2      |      Reset BlueNRG2      |      Reset BlueNRG2      |     Reset BlueNRG1     |     Reset BlueNRG1     |     Reset BlueNRG2     |     Reset BlueNRG2     |     Reset BlueNRG2     |     Reset BlueNRG2     |     Reset BlueNRG1     |     Reset BlueNRG1     |     Reset BlueNRG2     |     Reset BlueNRG2     |     Reset BlueNRG2     |     Reset BlueNRG2     |

@endtable

* \section Usage Usage

This Throughput demo has 2 roles:
 - The server that expose the Throughput service. It is the slave.
 - The client that uses the Throughput service. It is the master.

The Throughput Service contains 2 Characteristics:
 -# The TX Characteristic: the client can enable notifications on this characteristic. When the server has data to be sent, it sends notifications which contains the value of the TX Characteristic
 -# The RX Characteristic: it is a writable caracteristic. When the client has data to be sent to the server, it writes a value into this characteristic.

The maximum length of the characteristic value is 20 bytes. 

NOTES:
 - The <b>Client_unidirectional</b> and <b>Server_unidirectional </b> workspaces allow to target a unidirectional throughput test: server device sends characteristic notifications to the client device(THROUGHPUT_TEST_SERVER define enabled on on both workspaces, on the preprocessor options). The required serial port baudrate is 921600.
 - Program the client side on one BlueNRG-1,2 platform and reset it. The platform is seen on the PC as a virtual COM port. Open the port in a serial terminal emulator. 
 - Program the server side on a second BlueNRG-1,2 platform and reset it. The two platforms try to establish a connection. As soon as they get connected, the slave continuously 
   sends notification of TX characteristic (20 bytes) to the client. 
 - After every 500 packets, the measured application unidirectional throughput is displayed.
 
 - The <b>Client_bidirectional</b> and <b>Server_bidirectional</b> workspaces allow to target a bidirectional throughput test: server device sends characteristic notifications to the client device  and client device performs sends characteristic write without responses to the server device (THROUGHPUT_TEST_SERVER and THROUGHPUT_TEST_CLIENT define enabled on both workspaces, on the preprocessor options). The required serial port baudrate is 921600.
 - Program the client side on one BlueNRG-1,2 platform and reset it. The platform is seen on the PC as a virtual COM port. Open the port in a serial terminal emulator. 
 - Program the server side on a second BlueNRG-1,2 platform and reset it. The two platforms try to establish a connection. As soon as they get connected, the slave continuously 
   sends notifications of TX characteristic (20 bytes) to the client and the client continuously sends  write without response of RX characteristic (20 bytes) to the server.
 - After every 500 packets, the measured application bidirectional throughput is displayed.

**/
    
/** @addtogroup BlueNRG1_demonstrations_applications
 * BlueNRG-1,2 throughput demo \see BLE_Throughput_main.c for documentation.
 *
 *@{
 */

/** @} */
/** \cond DOXYGEN_SHOULD_SKIP_THIS
 */
/* Includes ------------------------------------------------------------------*/
#include <stdio.h>
#include <string.h>
#include "BlueNRG1_it.h"
#include "BlueNRG1_conf.h"
#include "ble_const.h" 
#include "bluenrg1_stack.h"
#include "gp_timer.h"
#include "app_state.h"
#include "throughput.h"
#include "SDK_EVAL_Config.h"
#include "Throughput_config.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define BLE_THROUGHPUT_VERSION_STRING "1.0.0" 


/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

int main(void) 
{
  uint8_t ret;

  /* System Init */
  SystemInit();
  
  /* Identify BlueNRG1 platform */
  SdkEvalIdentification();
  
  /* Init Clock */
  Clock_Init();

  /* Init the UART peripheral */
  SdkEvalComUartInit(UART_BAUDRATE); 

  /* BlueNRG-1,2 stack init */
  ret = BlueNRG_Stack_Initialization(&BlueNRG_Stack_Init_params);
  if (ret != BLE_STATUS_SUCCESS) {
    printf("Error in BlueNRG_Stack_Initialization() 0x%02x\r\n", ret);
    while(1);
  }
  
#if SERVER
  printf("BlueNRG-1,2 BLE Throughput Server Application (version: %s, %d,%d,%d)\r\n", BLE_THROUGHPUT_VERSION_STRING,MAX_ATT_MTU,PREPARE_WRITE_LIST_SIZE,MBLOCKS_COUNT);
#else
  printf("BlueNRG-1,2 BLE Throughput Client Application (version: %s,%d,%d,%d)\r\n", BLE_THROUGHPUT_VERSION_STRING,MAX_ATT_MTU,PREPARE_WRITE_LIST_SIZE,MBLOCKS_COUNT); 
#endif

  /* Init Throughput test */
  ret = THROUGHPUT_DeviceInit();
  if (ret != BLE_STATUS_SUCCESS) {
    printf("THROUGHPUT_DeviceInit()--> Failed 0x%02x\r\n", ret);
    while(1);
  }
  
  printf("BLE Stack Initialized \n");
  
  while(1) {
    /* BlueNRG-1,2 stack tick */
    BTLE_StackTick();
    
    /* Application tick */
    APP_Tick();
  }
  
} /* end main() */

/* Hardware Error event. 
   This event is used to notify the Host that a hardware failure has occurred in the Controller. 
   Hardware_Code Values:
   - 0x01: Radio state error
   - 0x02: Timer overrun error
   - 0x03: Internal queue overflow error
   After this event is recommended to force device reset. */

void hci_hardware_error_event(uint8_t Hardware_Code)
{
   NVIC_SystemReset();
}

/**
  * This event is generated to report firmware error informations.
  * FW_Error_Type possible values: 
  * Values:
  - 0x01: L2CAP recombination failure
  - 0x02: GATT unexpected response
  - 0x03: GATT unexpected request
    After this event with error type (0x01, 0x02, 0x3) it is recommended to disconnect. 
*/
void aci_hal_fw_error_event(uint8_t FW_Error_Type,
                            uint8_t Data_Length,
                            uint8_t Data[])
{
  if (FW_Error_Type <= 0x03)
  {
    uint16_t connHandle;
    
    /* Data field is the connection handle where error has occurred */
    connHandle = LE_TO_HOST_16(Data);
    
    aci_gap_terminate(connHandle, BLE_ERROR_TERMINATED_REMOTE_USER); 
  }
}

#ifdef  USE_FULL_ASSERT

/**
* @brief  Reports the name of the source file and the source line number
*         where the assert_param error has occurred.
* @param  file: pointer to the source file name
* @param  line: assert_param error line source number
*/
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
  ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  
  /* Infinite loop */
  while (1)
  {
  }
}

#endif

/******************* (C) COPYRIGHT 2015 STMicroelectronics *****END OF FILE****/
/** \endcond
 */
