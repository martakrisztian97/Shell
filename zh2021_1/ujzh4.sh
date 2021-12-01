#!/bin/bash

if [ $# -ne 2 ]
then
	echo "2 paraméter szükséges!"
	echo "ujzh4.sh <binaris1> <binaris2>"
	exit 1
fi

if ! [[ $1 =~ ^[0-1]+$ ]]
then
	echo "$1 nem bináris szám!"
	exit 2
fi

if ! [[ $2 =~ ^[0-1]+$ ]]
then
	echo "$2 nem bináris szám!"
	exit 3
fi

if [ $1 -eq $2 ]
then
	echo "$1 = $2"
elif [ $1 -lt $2 ]
then
	echo "$1 < $2"
elif [ $1 -gt $2 ]
then
	echo "$1 > $2"
fi
