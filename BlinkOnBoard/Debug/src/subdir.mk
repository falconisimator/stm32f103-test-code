################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/rf_stm32f1_delay.c \
../src/rf_stm32f1_led.c \
../src/syscalls.c \
../src/system_stm32f10x.c 

OBJS += \
./src/main.o \
./src/rf_stm32f1_delay.o \
./src/rf_stm32f1_led.o \
./src/syscalls.o \
./src/system_stm32f10x.o 

C_DEPS += \
./src/main.d \
./src/rf_stm32f1_delay.d \
./src/rf_stm32f1_led.d \
./src/syscalls.d \
./src/system_stm32f10x.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -DSTM32 -DSTM32F1 -DSTM32F103RBTx -DNUCLEO_F103RB -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -I"/Users/ericfalcon/Documents/workspace/stm32f103/BlinkOnBoard/Utilities/STM32F1xx-Nucleo" -I"/Users/ericfalcon/Documents/workspace/stm32f103/BlinkOnBoard/StdPeriph_Driver/inc" -I"/Users/ericfalcon/Documents/workspace/stm32f103/BlinkOnBoard/inc" -I"/Users/ericfalcon/Documents/workspace/stm32f103/BlinkOnBoard/CMSIS/device" -I"/Users/ericfalcon/Documents/workspace/stm32f103/BlinkOnBoard/CMSIS/core" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


