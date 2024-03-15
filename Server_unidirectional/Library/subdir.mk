################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_adc.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_dma.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_flash.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_gpio.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_i2c.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_mft.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_pka.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_rtc.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_spi.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_sysCtrl.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_uart.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_wdg.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/misc.c 

OBJS += \
./Library/BlueNRG1_adc.o \
./Library/BlueNRG1_dma.o \
./Library/BlueNRG1_flash.o \
./Library/BlueNRG1_gpio.o \
./Library/BlueNRG1_i2c.o \
./Library/BlueNRG1_mft.o \
./Library/BlueNRG1_pka.o \
./Library/BlueNRG1_rtc.o \
./Library/BlueNRG1_spi.o \
./Library/BlueNRG1_sysCtrl.o \
./Library/BlueNRG1_uart.o \
./Library/BlueNRG1_wdg.o \
./Library/misc.o 

C_DEPS += \
./Library/BlueNRG1_adc.d \
./Library/BlueNRG1_dma.d \
./Library/BlueNRG1_flash.d \
./Library/BlueNRG1_gpio.d \
./Library/BlueNRG1_i2c.d \
./Library/BlueNRG1_mft.d \
./Library/BlueNRG1_pka.d \
./Library/BlueNRG1_rtc.d \
./Library/BlueNRG1_spi.d \
./Library/BlueNRG1_sysCtrl.d \
./Library/BlueNRG1_uart.d \
./Library/BlueNRG1_wdg.d \
./Library/misc.d 


# Each subdirectory must supply rules for building sources it contributes
Library/BlueNRG1_adc.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_adc.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/BlueNRG1_dma.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_dma.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/BlueNRG1_flash.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_flash.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/BlueNRG1_gpio.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_gpio.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/BlueNRG1_i2c.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_i2c.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/BlueNRG1_mft.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_mft.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_mft.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/BlueNRG1_pka.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_pka.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_pka.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/BlueNRG1_rtc.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_rtc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_rtc.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/BlueNRG1_spi.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_spi.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/BlueNRG1_sysCtrl.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_sysCtrl.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_sysCtrl.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/BlueNRG1_uart.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_uart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_uart.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/BlueNRG1_wdg.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/BlueNRG1_wdg.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/BlueNRG1_wdg.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Library/misc.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/BlueNRG1_Periph_Driver/src/misc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Library/misc.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


