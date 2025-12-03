const fz = require('zigbee-herdsman-converters/converters/fromZigbee');
const tz = require('zigbee-herdsman-converters/converters/toZigbee');
const exposes = require('zigbee-herdsman-converters/lib/exposes');
const constants = require('zigbee-herdsman-converters/lib/constants');
const reporting = require('zigbee-herdsman-converters/lib/reporting');
const ota = require('zigbee-herdsman-converters/lib/ota');
const extend = require('zigbee-herdsman-converters/lib/modernExtend');
const e = exposes.presets;
const ea = exposes.access;
const {postfixWithEndpointName} = require('zigbee-herdsman-converters/lib/utils');

const { deviceAddCustomCluster, temperature, numeric } = require('zigbee-herdsman-converters/lib/modernExtend');
const Zcl = require('zigbee-herdsman').Zcl;

const bind = async (endpoint, target, clusters) => {
    for (const cluster of clusters) {
        await endpoint.bind(cluster, target);
    }
};

const ACCESS_STATE = 0b001, ACCESS_WRITE = 0b010, ACCESS_READ = 0b100;

const device = {
        zigbeeModel: ['DIYRuZ_FW2340R5'],
        model: 'DIYRuZ_FW2340R5',
        vendor: 'DIYRuZ',
        description: '[FW](https://github.com/koptserg/flower_CC2340R5_RGE)',
        supports: 'msSoilMoisture',
        ota: ota.zigbeeOTA,
        fromZigbee: [
            fz.ignore_genIdentify,
            fz.battery,
            fz.soil_moisture,
        ],
        toZigbee: [
            tz.factory_reset,
        ],
        configure: async (device, coordinatorEndpoint) => {
            const tenthEndpoint = device.getEndpoint(10);
            await bind(tenthEndpoint, coordinatorEndpoint, [
                'genPowerCfg',
                'msSoilMoisture',
            ]);            
        },
        exposes: [
            e.battery(),
            e.soil_moisture(),
        ],
};

module.exports = device;