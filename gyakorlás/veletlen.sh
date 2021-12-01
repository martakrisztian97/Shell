#!/bin/bash

szam=$RANDOM
szam2=$RANDOM

echo $szam
echo $szam2

osszeg=$(($szam+$szam2))
kulonbseg=$(($szam-$szam2))
szorzat=$(($szam*$szam2))
hanyados=$(($szam/$szam2))
maradek=$(($szam%$szam2))
echo "Összeg: $osszeg"
echo "Különbség: $kulonbseg"
echo "Szorzat: $szorzat"
echo "Hányados: $hanyados"
echo "Maradék: $maradek"
