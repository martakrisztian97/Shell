#!/bin/bash

if [ $# -ne 3 ]
then
	echo "3 paraméter szükséges"
	echo "teglatest.sh <a> <b> <c>"
	exit 1
fi

echo "a: $1"
echo "b: $2"
echo "c: $3"

terfogat=$(($1*$2*$3))
felszin=$(( 2*($1*$2+$1*$3+$2*$3) ))

echo "A téglatest térfogata: $terfogat"
echo "A téglatest felszíne: $felszin"

