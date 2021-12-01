#!/bin/bash

karakter=0
hossz=0
while [ $karakter != "q" ]
do
	read -p "Karakter: " karakter
	if [ $karakter == 1 ]
	then
		echo "ta"
		hossz=$(($hossz+1))
	fi

	if [ $karakter == 2 ]
	then
		echo "ti"
		hossz=$(($hossz+1))
	fi
done

echo "A morze jelzés hossza: $hossz"
