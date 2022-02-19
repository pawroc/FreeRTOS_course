################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/SEGGER/Rec/segger_uart.c 

OBJS += \
./ThirdParty/SEGGER/Rec/segger_uart.o 

C_DEPS += \
./ThirdParty/SEGGER/Rec/segger_uart.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/SEGGER/Rec/%.o: ../ThirdParty/SEGGER/Rec/%.c ThirdParty/SEGGER/Rec/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/FreeRTOS" -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/FreeRTOS/include" -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/SEGGER/Config" -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/SEGGER/OS" -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/SEGGER/SEGGER" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-SEGGER-2f-Rec

clean-ThirdParty-2f-SEGGER-2f-Rec:
	-$(RM) ./ThirdParty/SEGGER/Rec/segger_uart.d ./ThirdParty/SEGGER/Rec/segger_uart.o

.PHONY: clean-ThirdParty-2f-SEGGER-2f-Rec

