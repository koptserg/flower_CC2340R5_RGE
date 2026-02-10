#ifndef TMP102_H
#define TMP102_H

#include "zboss_api.h"

#define TMP102_I2CADDR 0x48 // Address of Temperature sensor (0x48,0x49,0x4A,0x4B)

#define TEMPERATURE_REGISTER 0x00
#define CONFIG_REGISTER 0x01
#define T_LOW_REGISTER 0x02
#define T_HIGH_REGISTER 0x03

// Set the I2C address and Bus
// Device ID: 0x48-GND (default), 0x49-VCC, 0x4A-SDA, 0x4B-SCL
// Sets the I2C bus (Wire by default)
extern bool tmp102_begin(uint8_t deviceAddress);
extern float tmp102_readTempC(void);	// Returns the temperature in degrees C
extern float tmp102_readTempF(void);	// Converts readTempC result to degrees F
extern void tmp102_sleep(void);	// Switch sensor to low power mode
extern void tmp102_wakeup(void);	// Wakeup and start running in normal power mode
extern bool tmp102_alert(void);	// Returns state of Alert register
extern bool tmp102_oneShot(bool setOneShot);	  // Sets the SingleShot Register. Returns 1 after the conversion is complete

extern void tmp102_setLowTempC(float temperature);  // Sets T_LOW (degrees C) alert threshold
extern void tmp102_setHighTempC(float temperature); // Sets T_HIGH (degrees C) alert threshold
extern void tmp102_setLowTempF(float temperature);  // Sets T_LOW (degrees F) alert threshold
extern void tmp102_setHighTempF(float temperature); // Sets T_HIGH (degrees F) alert threshold
extern float tmp102_readLowTempC(void);	// Reads T_LOW register in C
extern float tmp102_readHighTempC(void);	// Reads T_HIGH register in C
extern float tmp102_readLowTempF(void);	// Reads T_LOW register in F
extern float tmp102_readHighTempF(void);	// Reads T_HIGH register in F


// Set the conversion rate (0-3)
// 0 - 0.25 Hz
// 1 - 1 Hz
// 2 - 4 Hz (default)
// 3 - 8 Hz
extern void tmp102_setConversionRate(uint8_t rate);
		
// Enable or disable extended mode
// 0 - disabled (-55C to +128C)
// 1 - enabled  (-55C to +150C)
extern void tmp102_setExtendedMode(bool mode);
		
// Set the polarity of Alert
// 0 - Active LOW
// 1 - Active HIGH
extern void tmp102_setAlertPolarity(bool polarity);
		
// Set the number of consecutive faults
// 0 - 1 fault
// 1 - 2 faults
// 2 - 4 faults
// 3 - 6 faults
extern void tmp102_setFault(uint8_t faultSetting);
		
// Set Alert type
// 0 - Comparator Mode: Active from temp > T_HIGH until temp < T_LOW
// 1 - Thermostat Mode: Active when temp > T_HIGH until any read operation occurs
extern void tmp102_setAlertMode(bool mode);



#endif //TMP102_H
