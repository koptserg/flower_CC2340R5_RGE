################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
ecdsa_lpf3.o: C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/ti/common/ecdsa_lpf3/ecdsa_lpf3.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-armllvm_3.2.2.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -Oz -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE" -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/Debug" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/kernel/nortos" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/kernel/nortos/posix" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/ecc/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/ti/devices/cc23x0r5/driverlib" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/bootutil/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/bootutil/src" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/ext" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/ext/mbedtls-asn1/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/ti/source/mcuboot_app" -DEXCLUDE_TRACE -DBOOT_LOADER -DSPI_CTL0_SPO_LOW=SPI_CTL0_SPO_LO -DSPI_CTL0_SPO_HIGH=SPI_CTL0_SPO_HI -gdwarf-3 -Wall -fdata-sections -ffunction-sections -MMD -MP -MF"$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/Debug/syscfg" -std=gnu9x $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

keys.o: C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/ti/source/mcuboot_app/keys.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-armllvm_3.2.2.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -Oz -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE" -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/Debug" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/kernel/nortos" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/kernel/nortos/posix" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/ecc/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/ti/devices/cc23x0r5/driverlib" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/bootutil/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/bootutil/src" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/ext" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/ext/mbedtls-asn1/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/ti/source/mcuboot_app" -DEXCLUDE_TRACE -DBOOT_LOADER -DSPI_CTL0_SPO_LOW=SPI_CTL0_SPO_LO -DSPI_CTL0_SPO_HIGH=SPI_CTL0_SPO_HI -gdwarf-3 -Wall -fdata-sections -ffunction-sections -MMD -MP -MF"$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/Debug/syscfg" -std=gnu9x $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-958628865: ../mcuboot.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/sysconfig_1.22.0/sysconfig_cli.bat" --script "C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/mcuboot.syscfg" -o "syscfg" -s "C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/.metadata/product.json" --compiler ticlang
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/flash_map_backend.h: build-958628865 ../mcuboot.syscfg
syscfg/mcuboot_config.h: build-958628865
syscfg/ti_devices_config.c: build-958628865
syscfg/ti_drivers_config.c: build-958628865
syscfg/ti_drivers_config.h: build-958628865
syscfg/ti_utils_build_linker.cmd.genlibs: build-958628865
syscfg/ti_utils_build_linker.cmd.genmap: build-958628865
syscfg/ti_utils_build_compiler.opt: build-958628865
syscfg/syscfg_c.rov.xs: build-958628865
syscfg: build-958628865

syscfg/%.o: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-armllvm_3.2.2.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -Oz -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE" -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/Debug" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/kernel/nortos" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/kernel/nortos/posix" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/ecc/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/ti/devices/cc23x0r5/driverlib" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/bootutil/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/bootutil/src" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/ext" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/ext/mbedtls-asn1/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/ti/source/mcuboot_app" -DEXCLUDE_TRACE -DBOOT_LOADER -DSPI_CTL0_SPO_LOW=SPI_CTL0_SPO_LO -DSPI_CTL0_SPO_HIGH=SPI_CTL0_SPO_HI -gdwarf-3 -Wall -fdata-sections -ffunction-sections -MMD -MP -MF"syscfg/$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/Debug/syscfg" -std=gnu9x $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.o: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-armllvm_3.2.2.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -Oz -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE" -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/Debug" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/kernel/nortos" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/kernel/nortos/posix" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/ecc/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/ti/devices/cc23x0r5/driverlib" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/bootutil/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/bootutil/src" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/ext" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/ext/mbedtls-asn1/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/ti/source/mcuboot_app" -DEXCLUDE_TRACE -DBOOT_LOADER -DSPI_CTL0_SPO_LOW=SPI_CTL0_SPO_LO -DSPI_CTL0_SPO_HIGH=SPI_CTL0_SPO_HI -gdwarf-3 -Wall -fdata-sections -ffunction-sections -MMD -MP -MF"$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/Debug/syscfg" -std=gnu9x $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


