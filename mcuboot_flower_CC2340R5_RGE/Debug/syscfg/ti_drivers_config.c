/*
 *  ======== ti_drivers_config.c ========
 *  Configured TI-Drivers module definitions
 *
 *  DO NOT EDIT - This file is generated for the CC2340R5RGE
 *  by the SysConfig tool.
 */

#include <stddef.h>
#include <stdint.h>

#ifndef DeviceFamily_CC23X0R5
#define DeviceFamily_CC23X0R5
#endif

#include <ti/devices/DeviceFamily.h>

#include "ti_drivers_config.h"

/*
 *  =============================== GPIO ===============================
 */

#include <ti/drivers/GPIO.h>

/* The range of pins available on this device */
const uint_least8_t GPIO_pinLowerBound = 3;
const uint_least8_t GPIO_pinUpperBound = 24;

/*
 *  ======== gpioPinConfigs ========
 *  Array of Pin configurations
 */
GPIO_PinConfig gpioPinConfigs[25] = {
    0, /* Pin is not available on this device */
    0, /* Pin is not available on this device */
    0, /* Pin is not available on this device */
    GPIO_CFG_OUTPUT_INTERNAL | GPIO_CFG_OUT_STR_MED | GPIO_CFG_OUT_LOW, /* CONFIG_GPIO_LED_0 */
    GPIO_CFG_OUTPUT_INTERNAL | GPIO_CFG_OUT_STR_MED | GPIO_CFG_OUT_LOW, /* CONFIG_GPIO_LED_1 */
    GPIO_CFG_NO_DIR, /* DIO_5 */
    GPIO_CFG_NO_DIR, /* DIO_6 */
    GPIO_CFG_NO_DIR, /* DIO_7 */
    GPIO_CFG_NO_DIR, /* DIO_8 */
    GPIO_CFG_NO_DIR, /* DIO_9 */
    GPIO_CFG_NO_DIR, /* DIO_10 */
    GPIO_CFG_NO_DIR, /* DIO_11 */
    GPIO_CFG_NO_DIR, /* DIO_12 */
    GPIO_CFG_NO_DIR, /* DIO_13 */
    GPIO_CFG_NO_DIR, /* DIO_14 */
    GPIO_CFG_NO_DIR, /* DIO_15 */
    GPIO_CFG_DO_NOT_CONFIG, /* DIO_16 */
    GPIO_CFG_DO_NOT_CONFIG, /* DIO_17 */
    GPIO_CFG_NO_DIR, /* DIO_18 */
    GPIO_CFG_NO_DIR, /* DIO_19 */
    GPIO_CFG_INPUT_INTERNAL | GPIO_CFG_IN_INT_NONE | GPIO_CFG_PULL_NONE_INTERNAL, /* CONFIG_GPIO_BUTTON_0 */
    GPIO_CFG_NO_DIR, /* DIO_21 */
    GPIO_CFG_NO_DIR, /* DIO_22 */
    GPIO_CFG_NO_DIR, /* DIO_23 */
    GPIO_CFG_NO_DIR, /* DIO_24 */
};

/*
 *  ======== gpioCallbackFunctions ========
 *  Array of callback function pointers
 *  Change at runtime with GPIO_setCallback()
 */
GPIO_CallbackFxn gpioCallbackFunctions[25];

/*
 *  ======== gpioUserArgs ========
 *  Array of user argument pointers
 *  Change at runtime with GPIO_setUserArg()
 *  Get values with GPIO_getUserArg()
 */
void* gpioUserArgs[25];

const uint_least8_t CONFIG_GPIO_LED_0_CONST = CONFIG_GPIO_LED_0;
const uint_least8_t CONFIG_GPIO_LED_1_CONST = CONFIG_GPIO_LED_1;
const uint_least8_t CONFIG_GPIO_BUTTON_0_CONST = CONFIG_GPIO_BUTTON_0;

/*
 *  ======== GPIO_config ========
 */
const GPIO_Config GPIO_config = {
    .configs = (GPIO_PinConfig *)gpioPinConfigs,
    .callbacks = (GPIO_CallbackFxn *)gpioCallbackFunctions,
    .userArgs = gpioUserArgs,
    .intPriority = (~0)
};

#include <stdbool.h>

#include <ti/devices/DeviceFamily.h>
#include DeviceFamily_constructPath(driverlib/cpu.h)

#include <ti/drivers/GPIO.h>

/* Board GPIO defines */
#define BOARD_EXT_FLASH_SPI_CS      11
#define BOARD_EXT_FLASH_SPI_CLK     24 /* Note: Pin 5 and 3 must be connected on the P6 header */
#define BOARD_EXT_FLASH_SPI_PICO    13
#define BOARD_EXT_FLASH_SPI_POCI    21 /* Note: Pin 2 and 4 must be connected on the P2 header */

/*
 *  ======== Board_sendExtFlashByte ========
 */
void Board_sendExtFlashByte(uint8_t byte)
{
    uint8_t i;

    /* SPI Flash CS */
    GPIO_write(BOARD_EXT_FLASH_SPI_CS, 0);

    for (i = 0; i < 8; i++) {
        GPIO_write(BOARD_EXT_FLASH_SPI_CLK, 0); /* SPI Flash CLK */

        /* SPI Flash PICO */
        GPIO_write(BOARD_EXT_FLASH_SPI_PICO, (byte >> (7 - i)) & 0x01);
        GPIO_write(BOARD_EXT_FLASH_SPI_CLK, 1);  /* SPI Flash CLK */

        /*
         * Waste a few cycles to keep the CLK high for at
         * least 45% of the period.
         * 3 cycles per loop: 8 loops @ 48 MHz = 0.5 us.
         */
        CPUDelay(8);
    }

    GPIO_write(BOARD_EXT_FLASH_SPI_CLK, 0);  /* CLK */
    GPIO_write(BOARD_EXT_FLASH_SPI_CS, 1);  /* CS */

    /*
     * Keep CS high at least 40 us
     * 3 cycles per loop: 700 loops @ 48 MHz ~= 44 us
     */
    CPUDelay(700);
}

/*
 *  ======== Board_wakeUpExtFlash ========
 */
void Board_wakeUpExtFlash(void)
{
    /* SPI Flash CS*/
    GPIO_setConfig(BOARD_EXT_FLASH_SPI_CS, GPIO_CFG_OUTPUT | GPIO_CFG_OUT_HIGH | GPIO_CFG_OUT_STR_MED);

    /*
     *  To wake up we need to toggle the chip select at
     *  least 20 ns and ten wait at least 35 us.
     */

    /* Toggle chip select for ~20ns to wake ext. flash */
    GPIO_write(BOARD_EXT_FLASH_SPI_CS, 0);
    /* 3 cycles per loop: 1 loop @ 48 MHz ~= 62 ns */
    CPUDelay(1);
    GPIO_write(BOARD_EXT_FLASH_SPI_CS, 1);
    /* 3 cycles per loop: 560 loops @ 48 MHz ~= 35 us */
    CPUDelay(560);
}

/*
 *  ======== Board_shutDownExtFlash ========
 */
void Board_shutDownExtFlash(void)
{
    /*
     *  To be sure we are putting the flash into sleep and not waking it,
     *  we first have to make a wake up call
     */
    Board_wakeUpExtFlash();

    /* SPI Flash CS*/
    GPIO_setConfig(BOARD_EXT_FLASH_SPI_CS, GPIO_CFG_OUTPUT | GPIO_CFG_OUT_HIGH | GPIO_CFG_OUT_STR_MED);
    /* SPI Flash CLK */
    GPIO_setConfig(BOARD_EXT_FLASH_SPI_CLK, GPIO_CFG_OUTPUT | GPIO_CFG_OUT_LOW | GPIO_CFG_OUT_STR_MED);
    /* SPI Flash PICO */
    GPIO_setConfig(BOARD_EXT_FLASH_SPI_PICO, GPIO_CFG_OUTPUT | GPIO_CFG_OUT_LOW | GPIO_CFG_OUT_STR_MED);
    /* SPI Flash POCI */
    GPIO_setConfig(BOARD_EXT_FLASH_SPI_POCI, GPIO_CFG_IN_PD);

    uint8_t extFlashShutdown = 0xB9;

    Board_sendExtFlashByte(extFlashShutdown);

    GPIO_resetConfig(BOARD_EXT_FLASH_SPI_CS);
    GPIO_resetConfig(BOARD_EXT_FLASH_SPI_CLK);
    GPIO_resetConfig(BOARD_EXT_FLASH_SPI_PICO);
    GPIO_resetConfig(BOARD_EXT_FLASH_SPI_POCI);
}


#include <ti/drivers/Board.h>

/*
 *  ======== Board_initHook ========
 *  Perform any board-specific initialization needed at startup.  This
 *  function is declared weak to allow applications to override it if needed.
 */
void __attribute__((weak)) Board_initHook(void)
{
}

/*
 *  ======== Board_init ========
 *  Perform any initialization needed before using any board APIs
 */
void Board_init(void)
{
    /* ==== /ti/drivers/GPIO initialization ==== */
    /* Setup GPIO module and default-initialise pins */
    GPIO_init();

    Board_shutDownExtFlash();

    Board_initHook();
}

