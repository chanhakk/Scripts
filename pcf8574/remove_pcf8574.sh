#!/usr/bin/env bash
# remove pcf8574
echo 0x20 > /sys/bus/i2c/devices/i2c-2/delete_device

