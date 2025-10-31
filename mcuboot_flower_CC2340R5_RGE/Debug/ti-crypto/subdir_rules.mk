################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
ti-crypto/sl_crypto.o: C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/ext/ti-crypto/sl_crypto.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-armllvm_3.2.2.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -Oz -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE" -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/Debug" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/kernel/nortos" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/kernel/nortos/posix" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/ecc/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/ti/devices/cc23x0r5/driverlib" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/bootutil/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/bootutil/src" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/ext" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/ext/mbedtls-asn1/include" -I"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/ti/source/mcuboot_app" -DEXCLUDE_TRACE -DBOOT_LOADER -DSPI_CTL0_SPO_LOW=SPI_CTL0_SPO_LO -DSPI_CTL0_SPO_HIGH=SPI_CTL0_SPO_HI -gdwarf-3 -Wall -fdata-sections -ffunction-sections -MMD -MP -MF"ti-crypto/$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/Debug/syscfg" -std=gnu9x $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


