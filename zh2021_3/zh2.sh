#!/bin/bash

if [ $# -ne 3 ]
then
	echo "3 paraméter szükséges!"
	exit 1
fi

if [ $1 -lt 1 ] || [ $1 -gt 9 ]
then
	echo "$1 nem 1-9 közötti szám!"
	exit 2
fi

if [ $2 -lt 1 ] || [ $2 -gt 9 ]
then
        echo "$2 nem 1-9 közötti szám!"
        exit 3
fi

karakter=$3
hossz=${#karakter}
if [ $hossz -ne 1 ]
then
	echo "1. paraméternek csak 1 darab karaktert adjon meg!"
	exit 4
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		if [ $(($i%2)) -eq 0 ]
		then
			echo -n $3
		else
			echo -n 'o'
		fi
	done
	echo
done
