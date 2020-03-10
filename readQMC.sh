#!/usr/bin/env bash
# Read QMC5883 magnetometer values

# Sets control register 1
# OSR=64 RNG=2G ODR=10Hz Mode=Continuous
i2cset -y 2 0xd 0x09 0xc1
while [ true ]; do
	if [ `i2cget -y 2 0x0d 0x06` = 0x01 ]; then
		echo "X:" $((16#`i2cget -y 2 0x0d 0x00`))
		echo "Y:" $((16#`i2cget -y 2 0x0d 0x02`))
		echo "Z:" $((16#`i2cget -y 2 0x0d 0x02`))
	fi
done
