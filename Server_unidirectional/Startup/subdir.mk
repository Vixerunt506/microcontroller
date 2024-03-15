################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/CMSIS/Device/ST/BlueNRG1/Source/system_BlueNRG1.c 

OBJS += \
./Startup/system_BlueNRG1.o 

C_DEPS += \
./Startup/system_BlueNRG1.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/system_BlueNRG1.o: C:/Users/Mijia/ST/BlueNRG-1_2\ DK\ 3.2.3/Library/CMSIS/Device/ST/BlueNRG1/Source/system_BlueNRG1.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -Os -ffunction-sections -fdata-sections -g3 -std=c99 -DLS_SOURCE=LS_SOURCE_EXTERNAL_32KHZ -DSMPS_INDUCTOR=SMPS_INDUCTOR_10uH -DSERVER=1 -DTHROUGHPUT_TEST_SERVER -DUART_BAUDRATE=921600 -DBLUENRG2_DEVICE -DHS_SPEED_XTAL=HS_SPEED_XTAL_32MHZ -DUSER_BUTTON=BUTTON_2 -I../../../inc -I../../../../../../Library/hal/inc -I../../../../../../Library/BlueNRG1_Periph_Driver/inc -I../../../../../../Library/CMSIS/Device/ST/BlueNRG1/Include -I../../../../../../Library/CMSIS/Include -I../../../../../../Library/Bluetooth_LE/inc -I../../../../../../Library/BLE_Application/layers_inc -I../../../../../../Library/BLE_Application/Utils/inc -I../../../../../../Library/BLE_Application/OTA/inc -I../../../../../../Library/SDK_Eval_BlueNRG1/inc -MMD -MP -MF"Startup/system_BlueNRG1.d" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


