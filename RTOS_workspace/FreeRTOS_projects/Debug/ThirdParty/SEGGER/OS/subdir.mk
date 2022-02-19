################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c 

OBJS += \
./ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o 

C_DEPS += \
./ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/SEGGER/OS/%.o: ../ThirdParty/SEGGER/OS/%.c ThirdParty/SEGGER/OS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/FreeRTOS" -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/FreeRTOS/include" -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/SEGGER/Config" -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/SEGGER/OS" -I"C:/Workspace/FreeRTOS_course/RTOS_workspace/FreeRTOS_projects/ThirdParty/SEGGER/SEGGER" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-SEGGER-2f-OS

clean-ThirdParty-2f-SEGGER-2f-OS:
	-$(RM) ./ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d ./ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o

.PHONY: clean-ThirdParty-2f-SEGGER-2f-OS

