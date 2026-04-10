const {
    battery,
    numeric,
    temperature,
	illuminance,
	soilMoisture,
} = require('zigbee-herdsman-converters/lib/modernExtend');

const reporting = require('zigbee-herdsman-converters/lib/reporting');

const soilMoistureReporting = {min: 10, max: 1800, change: 300};
const temperatureReporting = {min: 10, max: 1800, change: 10};
const illuminanceReporting = {min: 10, max: 1800, change: 100};
const batteryReporting = {min: 10, max: 1800, change: 10};

const definition = {
        zigbeeModel: ['DIYRuZ_FW2340R5'],
        model: 'DIYRuZ_FW2340R5',
        vendor: 'DIYRuZ',
        description: '[FW](https://github.com/koptserg/flower_CC2340R5_RGE)',
        ota: true,
    extend: [
        soilMoisture({
            access: "STATE",
            reporting: soilMoistureReporting,
        }),
        temperature({
            access: "STATE",
            reporting: temperatureReporting,
        }),
        illuminance({
            access: "STATE",
            reporting: illuminanceReporting,
        }),
        battery({
            access: "STATE",
            reporting: batteryReporting,
        }),
    ],
        configure: async (device, coordinatorEndpoint) => {
            await reporting.bind(device.getEndpoint(10), coordinatorEndpoint, ["msSoilMoisture", "msIlluminanceMeasurement", "msTemperatureMeasurement"]);  
        },
    };

module.exports = definition;