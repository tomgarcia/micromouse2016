# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

# cross-platform directory manipulation
PROJECT = micromouse
OBJS = main.o motor.o encoder.o digital_input.o

ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = $(SHELL) -c "mkdir -p \"$(1)\""
    RM = $(SHELL) -c "rm -rf \"$(1)\""
endif

ifeq (,$(filter build,$(notdir $(CURDIR))))
.SUFFIXES:
OBJDIR := build
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = $(MAKE) --no-print-directory -C $(OBJDIR) -f $(mkfile_path) \
		SRCDIR=$(CURDIR) $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

VPATH = .. 

GCC_BIN = 
OBJECTS = mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/startup_stm32f411xe.o mbed-dev/common/mbed_assert.o mbed-dev/common/mbed_board.o mbed-dev/common/mbed_critical.o mbed-dev/common/mbed_error.o mbed-dev/common/mbed_gpio.o mbed-dev/common/mbed_interface.o mbed-dev/common/mbed_lp_ticker_api.o mbed-dev/common/mbed_mem_trace.o mbed-dev/common/mbed_pinmap_common.o mbed-dev/common/mbed_semihost_api.o mbed-dev/common/mbed_ticker_api.o mbed-dev/common/mbed_us_ticker_api.o mbed-dev/common/mbed_wait_api.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_adc.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_adc_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_can.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_cec.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_cortex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_crc.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_cryp.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_cryp_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_dac.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_dac_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_dcmi.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_dcmi_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_dfsdm.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_dma.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_dma2d.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_dma_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_dsi.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_eth.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_flash.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_flash_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_flash_ramfunc.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_fmpi2c.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_fmpi2c_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_gpio.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_hash.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_hash_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_hcd.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_i2c.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_i2c_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_i2s.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_i2s_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_irda.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_iwdg.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_lptim.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_ltdc.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_ltdc_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_msp_template.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_nand.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_nor.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_pccard.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_pcd.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_pcd_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_pwr.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_pwr_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_qspi.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_rcc.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_rcc_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_rng.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_rtc.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_rtc_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_sai.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_sai_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_sd.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_sdram.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_smartcard.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_spdifrx.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_spi.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_sram.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_tim.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_tim_ex.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_uart.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_usart.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_hal_wwdg.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_ll_fmc.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_ll_fsmc.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_ll_sdmmc.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/stm32f4xx_ll_usb.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE/cmsis_nvic.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE/hal_tick.o mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE/system_stm32f4xx.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/analogin_api.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/analogout_api.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/can_api.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/entropy_hardware_poll.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/gpio_api.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/gpio_irq_api.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/i2c_api.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/mbed_overrides.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/pinmap.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/port_api.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/pwmout_api.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/rtc_api.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/serial_api.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/sleep.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/spi_api.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/us_ticker.o mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE/PeripheralPins.o mbed-dev/common/AnalogIn.o mbed-dev/common/BusIn.o mbed-dev/common/BusInOut.o mbed-dev/common/BusOut.o mbed-dev/common/CAN.o mbed-dev/common/CallChain.o mbed-dev/common/Ethernet.o mbed-dev/common/FileBase.o mbed-dev/common/FileLike.o mbed-dev/common/FilePath.o mbed-dev/common/FileSystemLike.o mbed-dev/common/I2C.o mbed-dev/common/I2CSlave.o mbed-dev/common/InterruptIn.o mbed-dev/common/InterruptManager.o mbed-dev/common/LocalFileSystem.o mbed-dev/common/RawSerial.o mbed-dev/common/SPI.o mbed-dev/common/SPISlave.o mbed-dev/common/Serial.o mbed-dev/common/SerialBase.o mbed-dev/common/Stream.o mbed-dev/common/Ticker.o mbed-dev/common/Timeout.o mbed-dev/common/Timer.o mbed-dev/common/TimerEvent.o mbed-dev/common/mbed_alloc_wrappers.o mbed-dev/common/mbed_rtc_time.o mbed-dev/common/retarget.o 
SYS_OBJECTS = 
INCLUDE_PATHS = -I../. -I../mbed-dev -I../mbed-dev/api -I../mbed-dev/common -I../mbed-dev/hal -I../mbed-dev/hal/storage_abstraction -I../mbed-dev/targets -I../mbed-dev/targets/cmsis -I../mbed-dev/targets/cmsis/TARGET_STM -I../mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4 -I../mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE -I../mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM -I../mbed-dev/targets/cmsis/TOOLCHAIN_GCC -I../mbed-dev/targets/hal -I../mbed-dev/targets/hal/TARGET_STM -I../mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4 -I../mbed-dev/targets/hal/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE 
LIBRARY_PATHS = 
LIBRARIES = 
LINKER_SCRIPT = ../mbed-dev/targets/cmsis/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/STM32F411XE.ld

############################################################################### 
AS      = $(GCC_BIN)arm-none-eabi-as
CC      = $(GCC_BIN)arm-none-eabi-gcc
CPP     = $(GCC_BIN)arm-none-eabi-g++
LD      = $(GCC_BIN)arm-none-eabi-gcc
OBJCOPY = $(GCC_BIN)arm-none-eabi-objcopy
OBJDUMP = $(GCC_BIN)arm-none-eabi-objdump
SIZE    = $(GCC_BIN)arm-none-eabi-size 

ifeq ($(HARDFP),1)
	FLOAT_ABI = hard
else
	FLOAT_ABI = softfp
endif


CPU = -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=$(FLOAT_ABI) 
CC_FLAGS = -c -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -Os -std=gnu99 -D__MBED__=1 -DDEVICE_I2CSLAVE=1 -DTARGET_LIKE_MBED -DDEVICE_PORTOUT=1 -DDEVICE_PORTINOUT=1 -DTARGET_RTOS_M4_M7 -DDEVICE_RTC=1 -DTOOLCHAIN_object -DDEVICE_SERIAL_ASYNCH=1 -DTARGET_STM32F4 -D__CMSIS_RTOS -D__CORTEX_M4 -DTOOLCHAIN_GCC -DDEVICE_I2C_ASYNCH=1 -DTARGET_CORTEX_M -DTARGET_LIKE_CORTEX_M4 -DTARGET_M4 -DTARGET_UVISOR_UNSUPPORTED -DDEVICE_SERIAL=1 -DDEVICE_INTERRUPTIN=1 -DDEVICE_I2C=1 -DTRANSACTION_QUEUE_SIZE_SPI=2 -DTARGET_NUCLEO_F411RE -DDEVICE_STDIO_MESSAGES=1 -DTARGET_FF_MORPHO -D__FPU_PRESENT=1 -DTARGET_FF_ARDUINO -DDEVICE_PORTIN=1 -DTARGET_RELEASE -DTARGET_STM -DDEVICE_SERIAL_FC=1 -D__MBED_CMSIS_RTOS_CM -DDEVICE_SLEEP=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_SPI=1 -DDEVICE_ERROR_RED=1 -DMBED_BUILD_TIMESTAMP=1476063042.77 -DDEVICE_SPISLAVE=1 -DDEVICE_ANALOGIN=1 -DDEVICE_PWMOUT=1 -DTARGET_STM32F411RE -DARM_MATH_CM4 -include mbed_config.h -MMD -MP
CPPC_FLAGS = -c -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -Os -std=gnu++98 -fno-rtti -Wvla -D__MBED__=1 -DDEVICE_I2CSLAVE=1 -DTARGET_LIKE_MBED -DDEVICE_PORTOUT=1 -DDEVICE_PORTINOUT=1 -DTARGET_RTOS_M4_M7 -DDEVICE_RTC=1 -DTOOLCHAIN_object -DDEVICE_SERIAL_ASYNCH=1 -DTARGET_STM32F4 -D__CMSIS_RTOS -D__CORTEX_M4 -DTOOLCHAIN_GCC -DDEVICE_I2C_ASYNCH=1 -DTARGET_CORTEX_M -DTARGET_LIKE_CORTEX_M4 -DTARGET_M4 -DTARGET_UVISOR_UNSUPPORTED -DDEVICE_SERIAL=1 -DDEVICE_INTERRUPTIN=1 -DDEVICE_I2C=1 -DTRANSACTION_QUEUE_SIZE_SPI=2 -DTARGET_NUCLEO_F411RE -DDEVICE_STDIO_MESSAGES=1 -DTARGET_FF_MORPHO -D__FPU_PRESENT=1 -DTARGET_FF_ARDUINO -DDEVICE_PORTIN=1 -DTARGET_RELEASE -DTARGET_STM -DDEVICE_SERIAL_FC=1 -D__MBED_CMSIS_RTOS_CM -DDEVICE_SLEEP=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_SPI=1 -DDEVICE_ERROR_RED=1 -DMBED_BUILD_TIMESTAMP=1476063042.77 -DDEVICE_SPISLAVE=1 -DDEVICE_ANALOGIN=1 -DDEVICE_PWMOUT=1 -DTARGET_STM32F411RE -DARM_MATH_CM4 -include mbed_config.h -MMD -MP
ASM_FLAGS = -x assembler-with-cpp -DTRANSACTION_QUEUE_SIZE_SPI=2 -D__CORTEX_M4 -DARM_MATH_CM4 -D__FPU_PRESENT=1 -D__MBED_CMSIS_RTOS_CM -D__CMSIS_RTOS -c -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -Os
CC_SYMBOLS = -D__MBED__=1 -DDEVICE_I2CSLAVE=1 -DTARGET_LIKE_MBED -DDEVICE_PORTOUT=1 -DDEVICE_PORTINOUT=1 -DTARGET_RTOS_M4_M7 -DDEVICE_RTC=1 -DTOOLCHAIN_object -DDEVICE_SERIAL_ASYNCH=1 -DTARGET_STM32F4 -D__CMSIS_RTOS -D__CORTEX_M4 -DTOOLCHAIN_GCC -DDEVICE_I2C_ASYNCH=1 -DTARGET_CORTEX_M -DTARGET_LIKE_CORTEX_M4 -DTARGET_M4 -DTARGET_UVISOR_UNSUPPORTED -DDEVICE_SERIAL=1 -DDEVICE_INTERRUPTIN=1 -DDEVICE_I2C=1 -DTRANSACTION_QUEUE_SIZE_SPI=2 -DTARGET_NUCLEO_F411RE -DDEVICE_STDIO_MESSAGES=1 -DTARGET_FF_MORPHO -D__FPU_PRESENT=1 -DTARGET_FF_ARDUINO -DDEVICE_PORTIN=1 -DTARGET_RELEASE -DTARGET_STM -DDEVICE_SERIAL_FC=1 -D__MBED_CMSIS_RTOS_CM -DDEVICE_SLEEP=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_SPI=1 -DDEVICE_ERROR_RED=1 -DMBED_BUILD_TIMESTAMP=1476063042.77 -DDEVICE_SPISLAVE=1 -DDEVICE_ANALOGIN=1 -DDEVICE_PWMOUT=1 -DTARGET_STM32F411RE -DARM_MATH_CM4 

LD_FLAGS =-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_malloc_r -Wl,--wrap,_free_r -Wl,--wrap,_realloc_r -Wl,--wrap,_calloc_r -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp 
LD_SYS_LIBS = -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys


ifeq ($(DEBUG), 1)
  CC_FLAGS += -DDEBUG -O0
else
  CC_FLAGS += -DNDEBUG -Os
endif


.PHONY: all lst size

all: $(PROJECT).bin $(PROJECT).hex size



.asm.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<
.s.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<
.S.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC)  $(CC_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CPP) $(CPPC_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<



$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(OBJS) $(LINKER_SCRIPT)
	$(LD) $(LD_FLAGS) -T$(filter %.ld, $^) $(LIBRARY_PATHS) -o $@ $(filter %.o, $^) -Wl,--start-group $(LIBRARIES) $(LD_SYS_LIBS) -Wl,--end-group


$(PROJECT).bin: $(PROJECT).elf
	$(OBJCOPY) -O binary $< $@

$(PROJECT).hex: $(PROJECT).elf
	@$(OBJCOPY) -O ihex $< $@

$(PROJECT).lst: $(PROJECT).elf
	@$(OBJDUMP) -Sdh $< > $@

lst: $(PROJECT).lst

size: $(PROJECT).elf
	$(SIZE) $(PROJECT).elf

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)


endif

flash:
	st-flash write build/$(PROJECT).bin 0x8000000
