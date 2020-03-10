#!/usr/bin/env bash
# Read QMC5883 magnetometer values

# Sets control register 1
# OSR=64 RNG=2G ODR=10Hz Mode=Continuous
i2cset -y 2 0xd 0x09 0xc1
while [ true ]; do
	
	X=`i2cget -y 2 0x0d 0x00`
	X=${X:2}
	echo "X:" $((16#$X))

	Y=`i2cget -y 2 0x0d 0x02`
	Y=${Y:2}
	echo "Y:" $((16#$Y))
	
	Z=`i2cget -y 2 0x0d 0x04`
	Z=${Z:2}
	echo "Z:" $((16#$Z))

	sleep 0.1
	clear
done
