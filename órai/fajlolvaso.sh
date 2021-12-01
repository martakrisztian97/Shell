#!/bin/bash

if [ $# -lt 1 ]
then
	echo "Meg kell adni az állomány nevét!"
	exit 1
fi

if ! [ -f $1  ]
then
	echo "Nem állományt adott meg!"
	exit 2
fi

exec 7<"$1"
while read -u 7 sor
do
	echo $sor
done

exev 7>&-
