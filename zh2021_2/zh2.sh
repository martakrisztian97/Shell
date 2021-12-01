#!/bin/bash

if [ $# -ne 3 ]
then
	echo "3 paraméter szükséges"
	echo "zh2.sh <páratlan szám> <karakter> <karakter>"
	exit 1
fi

if [ $1 -lt 5 ] || [ $1 -ge 16 ]
then
	echo "$1 nem 5-15 közötti szám!"
	exit 2
fi

karakter1=$2
hossz1=${#karakter1}
if [ $hossz1 -ne 1 ]
then
	echo "2. paraméternek csak 1 darab karaktert adjon meg!"
	exit 3
fi

karakter2=$3
hossz2=${#karakter2}
if [ $hossz2 -ne 1 ]
then
	echo "3. paraméternek csak 1 darab karaktert adjon meg!"
	exit 4
fi

if [[ $(($1%2)) -eq 0 ]]
then
	echo "1. paraméternek páratlan számot adjon meg!"
	exit 5
fi

seged=$1
for i in $(seq 1 $1)
do
	for j in $(seq 1 $1)
	do
		if [ $j -lt $seged ]
		then
			echo -n $2
		fi
		
		if [ $j -gt $seged ]
                then
                        echo -n $3
                fi

		if [ $j -eq $seged ]
                then
                        echo -n "-"
                fi
	done
	echo
	seged=$((seged-1))
done
