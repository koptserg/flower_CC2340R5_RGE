################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../mcuboot_cc2340r5.cmd 

SYSCFG_SRCS += \
../mcuboot.syscfg 

C_SRCS += \
C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/ti/common/ecdsa_lpf3/ecdsa_lpf3.c \
C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/ti/source/mcuboot_app/keys.c \
./syscfg/ti_devices_config.c \
./syscfg/ti_drivers_config.c \
../mcuboot_app.c 

GEN_FILES += \
./syscfg/ti_devices_config.c \
./syscfg/ti_drivers_config.c \
./syscfg/ti_utils_build_compiler.opt 

GEN_MISC_DIRS += \
./syscfg 

C_DEPS += \
./ecdsa_lpf3.d \
./keys.d \
./syscfg/ti_devices_config.d \
./syscfg/ti_drivers_config.d \
./mcuboot_app.d 

GEN_OPTS += \
./syscfg/ti_utils_build_compiler.opt 

OBJS += \
./ecdsa_lpf3.o \
./keys.o \
./syscfg/ti_devices_config.o \
./syscfg/ti_drivers_config.o \
./mcuboot_app.o 

GEN_MISC_FILES += \
./syscfg/flash_map_backend.h \
./syscfg/mcuboot_config.h \
./syscfg/ti_drivers_config.h \
./syscfg/ti_utils_build_linker.cmd.genlibs \
./syscfg/ti_utils_build_linker.cmd.genmap \
./syscfg/syscfg_c.rov.xs 

GEN_MISC_DIRS__QUOTED += \
"syscfg" 

OBJS__QUOTED += \
"ecdsa_lpf3.o" \
"keys.o" \
"syscfg\ti_devices_config.o" \
"syscfg\ti_drivers_config.o" \
"mcuboot_app.o" 

GEN_MISC_FILES__QUOTED += \
"syscfg\flash_map_backend.h" \
"syscfg\mcuboot_config.h" \
"syscfg\ti_drivers_config.h" \
"syscfg\ti_utils_build_linker.cmd.genlibs" \
"syscfg\ti_utils_build_linker.cmd.genmap" \
"syscfg\syscfg_c.rov.xs" 

C_DEPS__QUOTED += \
"ecdsa_lpf3.d" \
"keys.d" \
"syscfg\ti_devices_config.d" \
"syscfg\ti_drivers_config.d" \
"mcuboot_app.d" 

GEN_FILES__QUOTED += \
"syscfg\ti_devices_config.c" \
"syscfg\ti_drivers_config.c" \
"syscfg\ti_utils_build_compiler.opt" 

C_SRCS__QUOTED += \
"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/ti/common/ecdsa_lpf3/ecdsa_lpf3.c" \
"C:/ti/simplelink_lowpower_f3_sdk_8_40_02_01/source/third_party/mcuboot/boot/ti/source/mcuboot_app/keys.c" \
"./syscfg/ti_devices_config.c" \
"./syscfg/ti_drivers_config.c" \
"../mcuboot_app.c" 

SYSCFG_SRCS__QUOTED += \
"../mcuboot.syscfg" 


