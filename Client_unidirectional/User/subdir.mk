################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Project/BLE_Examples/BLE_Throughput/src/BLE_Throughput_main.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Project/BLE_Examples/BLE_Throughput/src/BlueNRG1_it.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Project/BLE_Examples/BLE_Throughput/src/gatt_db.c \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Project/BLE_Examples/BLE_Throughput/src/throughput.c 

OBJS += \
./User/BLE_Throughput_main.o \
./User/BlueNRG1_it.o \
./User/gatt_db.o \
./User/throughput.o 

C_DEPS += \
./User/BLE_Throughput_main.d \
./User/BlueNRG1_it.d \
./User/gatt_db.d \
./User/throughput.d 


# Each subdirectory must supply rules for building sources it contributes
User/BLE_Throughput_main.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Project/BLE_Examples/BLE_Throughput/src/BLE_Throughput_main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DCLIENT=1 -DBLE_STACK_CONFIGURATION=BLE_STACK_FULL_CONFIGURATION -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"User/BLE_Throughput_main.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

User/BlueNRG1_it.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Project/BLE_Examples/BLE_Throughput/src/BlueNRG1_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DCLIENT=1 -DBLE_STACK_CONFIGURATION=BLE_STACK_FULL_CONFIGURATION -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"User/BlueNRG1_it.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

User/gatt_db.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Project/BLE_Examples/BLE_Throughput/src/gatt_db.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DCLIENT=1 -DBLE_STACK_CONFIGURATION=BLE_STACK_FULL_CONFIGURATION -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"User/gatt_db.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

User/throughput.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Project/BLE_Examples/BLE_Throughput/src/throughput.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DCLIENT=1 -DBLE_STACK_CONFIGURATION=BLE_STACK_FULL_CONFIGURATION -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"User/throughput.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


