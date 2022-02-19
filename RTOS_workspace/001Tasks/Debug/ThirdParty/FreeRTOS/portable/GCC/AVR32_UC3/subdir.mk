################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/port.c 

S_UPPER_SRCS += \
../ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/exception.S 

OBJS += \
./ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/exception.o \
./ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/port.o 

S_UPPER_DEPS += \
./ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/exception.d 

C_DEPS += \
./ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/%.o: ../ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/%.S ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/%.o: ../ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/%.c ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-FreeRTOS-2f-portable-2f-GCC-2f-AVR32_UC3

clean-ThirdParty-2f-FreeRTOS-2f-portable-2f-GCC-2f-AVR32_UC3:
	-$(RM) ./ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/exception.d ./ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/exception.o ./ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/port.d ./ThirdParty/FreeRTOS/portable/GCC/AVR32_UC3/port.o

.PHONY: clean-ThirdParty-2f-FreeRTOS-2f-portable-2f-GCC-2f-AVR32_UC3

