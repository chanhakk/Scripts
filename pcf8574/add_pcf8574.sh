#!/usr/bin/env bash
# adds pcf8574 to sysfs

i2c_port=2
echo pcf8574 0x20 > /sys/bus/i2c/devices/i2c-2/new_device
echo 488 > /sys/class/gpio/export
echo 489 > /sys/class/gpio/export
echo 490 > /sys/class/gpio/export
echo 491 > /sys/class/gpio/export
echo 492 > /sys/class/gpio/export
echo 493 > /sys/class/gpio/export
echo 494 > /sys/class/gpio/export
echo 495 > /sys/class/gpio/export
