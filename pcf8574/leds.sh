#!/bin/env bash

echo "out" | sudo tee -a /sys/class/gpio/gpio488/direction
echo "out" | sudo tee -a /sys/class/gpio/gpio489/direction
echo "out" | sudo tee -a /sys/class/gpio/gpio490/direction

while true
do
	echo "0" | sudo tee -a /sys/class/gpio/gpio488/value
	echo "0" | sudo tee -a /sys/class/gpio/gpio489/value
	echo "0" | sudo tee -a /sys/class/gpio/gpio490/value

	sleep 0.1

	echo "0" | sudo tee -a /sys/class/gpio/gpio488/value
	echo "0" | sudo tee -a /sys/class/gpio/gpio489/value
	echo "1" | sudo tee -a /sys/class/gpio/gpio490/value

	sleep 0.1

	echo "0" | sudo tee -a /sys/class/gpio/gpio488/value
	echo "1" | sudo tee -a /sys/class/gpio/gpio489/value
	echo "0" | sudo tee -a /sys/class/gpio/gpio490/value

	sleep 0.1

	echo "0" | sudo tee -a /sys/class/gpio/gpio488/value
	echo "1" | sudo tee -a /sys/class/gpio/gpio489/value
	echo "1" | sudo tee -a /sys/class/gpio/gpio490/value

	sleep 0.1

	echo "1" | sudo tee -a /sys/class/gpio/gpio488/value
	echo "0" | sudo tee -a /sys/class/gpio/gpio489/value
	echo "0" | sudo tee -a /sys/class/gpio/gpio490/value

	sleep 0.1

	echo "1" | sudo tee -a /sys/class/gpio/gpio488/value
	echo "0" | sudo tee -a /sys/class/gpio/gpio489/value
	echo "1" | sudo tee -a /sys/class/gpio/gpio490/value

	sleep 0.1

	echo "1" | sudo tee -a /sys/class/gpio/gpio488/value
	echo "1" | sudo tee -a /sys/class/gpio/gpio489/value
	echo "0" | sudo tee -a /sys/class/gpio/gpio490/value

	sleep 0.1

	echo "1" | sudo tee -a /sys/class/gpio/gpio488/value
	echo "1" | sudo tee -a /sys/class/gpio/gpio489/value
	echo "1" | sudo tee -a /sys/class/gpio/gpio490/value

	sleep 0.1

done