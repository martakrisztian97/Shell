#!/bin/bash

if [ $# -ne 1 ]
then
	echo "1 paraméter szükséges!"
	exit 1
fi

if ! [[ $1 =~ ^[0-1]+$ ]]
then
	echo "$1 nem bináris szám!"
	exit 2
fi

echo $((2#$1))
