################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-armllvm_3.2.2.LTS

GEN_OPTS__FLAG := @"syscfg/ti_utils_build_compiler.opt" 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./ecdsa_lpf3.o" \
"./keys.o" \
"./syscfg/ti_devices_config.o" \
"./syscfg/ti_drivers_config.o" \
"./mcuboot_app.o" \
"./bootutil/src/boot_record.o" \
"./bootutil/src/bootutil_misc.o" \
"./bootutil/src/bootutil_public.o" \
"./bootutil/src/caps.o" \
"./bootutil/src/encrypted.o" \
"./bootutil/src/fault_injection_hardening.o" \
"./bootutil/src/fault_injection_hardening_delay_rng_mbedtls.o" \
"./bootutil/src/image_ecdsa.o" \
"./bootutil/src/image_ed25519.o" \
"./bootutil/src/image_rsa.o" \
"./bootutil/src/image_validate.o" \
"./bootutil/src/loader.o" \
"./bootutil/src/security_cnt.o" \
"./bootutil/src/swap_misc.o" \
"./bootutil/src/swap_move.o" \
"./bootutil/src/swap_scratch.o" \
"./bootutil/src/tlv.o" \
"./flash_map_backend/bsp_spi_lpf3.o" \
"./flash_map_backend/ext_flash.o" \
"./flash_map_backend/flash_map_backend.o" \
"./mbedtls-asn1/asn1parse.o" \
"./mbedtls-asn1/platform_util.o" \
"./mcuboot_config/led_debug.o" \
"./ti-crypto/sl_crypto.o" \
"../mcuboot_cc2340r5.cmd" \
$(GEN_CMDS__FLAG) \
-Wl,-lti_utils_build_linker.cmd.genlibs \
-Wl,-l"third_party/ecc/lib/ticlang/m0p/ecc.a" \
-Wl,-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include bootutil/src/subdir_vars.mk
-include flash_map_backend/subdir_vars.mk
-include mbedtls-asn1/subdir_vars.mk
-include mcuboot_config/subdir_vars.mk
-include ti-crypto/subdir_vars.mk
-include subdir_rules.mk
-include bootutil/src/subdir_rules.mk
-include flash_map_backend/subdir_rules.mk
-include mbedtls-asn1/subdir_rules.mk
-include mcuboot_config/subdir_rules.mk
-include ti-crypto/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
mcuboot_flower_CC2340R5_RGE.out 

EXE_OUTPUTS__QUOTED += \
"mcuboot_flower_CC2340R5_RGE.out" 


# All Target
all: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "mcuboot_flower_CC2340R5_RGE.out"

# Tool invocations
mcuboot_flower_CC2340R5_RGE.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: Arm Linker'
	"C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-armllvm_3.2.2.LTS/bin/tiarmclang.exe" -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -Oz -DEXCLUDE_TRACE -DBOOT_LOADER -DSPI_CTL0_SPO_LOW=SPI_CTL0_SPO_LO -DSPI_CTL0_SPO_HIGH=SPI_CTL0_SPO_HI -gdwarf-3 -Wall -fdata-sections -ffunction-sections -Wl,-m"mcuboot_flower_CC2340R5_RGE.map" -Wl,-i"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source" -Wl,-i"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/kernel/nortos" -Wl,-i"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/ecc/lib/ticlang/m0/ecc.a" -Wl,-i"." -Wl,-i"C:/Users/Sergey/workspace_v12/mcuboot_flower_CC2340R5_RGE/Debug/syscfg" -Wl,-i"C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-armllvm_3.2.2.LTS/lib" -Wl,--diag_wrap=off -Wl,--display_error_number -Wl,--warn_sections -Wl,--xml_link_info="mcuboot_flower_CC2340R5_RGE_linkInfo.xml" -Wl,--rom_model -o "mcuboot_flower_CC2340R5_RGE.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '
	@$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(GEN_MISC_FILES__QUOTED)$(GEN_FILES__QUOTED)$(EXE_OUTPUTS__QUOTED)
	-$(RM) "ecdsa_lpf3.o" "keys.o" "syscfg\ti_devices_config.o" "syscfg\ti_drivers_config.o" "mcuboot_app.o" "bootutil\src\boot_record.o" "bootutil\src\bootutil_misc.o" "bootutil\src\bootutil_public.o" "bootutil\src\caps.o" "bootutil\src\encrypted.o" "bootutil\src\fault_injection_hardening.o" "bootutil\src\fault_injection_hardening_delay_rng_mbedtls.o" "bootutil\src\image_ecdsa.o" "bootutil\src\image_ed25519.o" "bootutil\src\image_rsa.o" "bootutil\src\image_validate.o" "bootutil\src\loader.o" "bootutil\src\security_cnt.o" "bootutil\src\swap_misc.o" "bootutil\src\swap_move.o" "bootutil\src\swap_scratch.o" "bootutil\src\tlv.o" "flash_map_backend\bsp_spi_lpf3.o" "flash_map_backend\ext_flash.o" "flash_map_backend\flash_map_backend.o" "mbedtls-asn1\asn1parse.o" "mbedtls-asn1\platform_util.o" "mcuboot_config\led_debug.o" "ti-crypto\sl_crypto.o" 
	-$(RM) "ecdsa_lpf3.d" "keys.d" "syscfg\ti_devices_config.d" "syscfg\ti_drivers_config.d" "mcuboot_app.d" "bootutil\src\boot_record.d" "bootutil\src\bootutil_misc.d" "bootutil\src\bootutil_public.d" "bootutil\src\caps.d" "bootutil\src\encrypted.d" "bootutil\src\fault_injection_hardening.d" "bootutil\src\fault_injection_hardening_delay_rng_mbedtls.d" "bootutil\src\image_ecdsa.d" "bootutil\src\image_ed25519.d" "bootutil\src\image_rsa.d" "bootutil\src\image_validate.d" "bootutil\src\loader.d" "bootutil\src\security_cnt.d" "bootutil\src\swap_misc.d" "bootutil\src\swap_move.d" "bootutil\src\swap_scratch.d" "bootutil\src\tlv.d" "flash_map_backend\bsp_spi_lpf3.d" "flash_map_backend\ext_flash.d" "flash_map_backend\flash_map_backend.d" "mbedtls-asn1\asn1parse.d" "mbedtls-asn1\platform_util.d" "mcuboot_config\led_debug.d" "ti-crypto\sl_crypto.d" 
	-$(RMDIR) $(GEN_MISC_DIRS__QUOTED)
	-@echo 'Finished clean'
	-@echo ' '

post-build:
	-C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-armllvm_3.2.2.LTS/bin/tiarmhex -order MS --memwidth=8 --romwidth=8 --intel -o mcuboot_flower_CC2340R5_RGE.hex mcuboot_flower_CC2340R5_RGE
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

