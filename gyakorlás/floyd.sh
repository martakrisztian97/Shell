#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Szükséges egy paraméter!"
	exit 1
fi

szam=1
for i in $(seq 1 $1)
do
	for j in $(seq 1 $i)
	do
		echo -n  "$szam "
		szam=$((szam+1))
	done
	echo
done
