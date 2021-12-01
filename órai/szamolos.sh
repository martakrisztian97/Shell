#!/bin/bash

sorokszama=0
szavakszama=0
karakterekszama=0

sorokszama=`wc -l $1`
sorokszama=${sorokszama:0:3}
echo "$sorokszama"
szavakszama=`wc -w $1`
szavakszama=${szavakszama:0:4}
echo "$szavakszama"
karakterekszama=`wc -c $1`
karakterekszama=${karakterekszama:0:4}

echo "Átlagos soronkénti szószám: $((szavakszama/sorokszama))"
echo "Átlagos soronkénti karakterszám: $((karakterekszama/sorokszama))"

osszeg=$(($2 + $3))
kulonbseg=$(($2 - $3))
szorzat=$(($2 * $3))
hanyados=$(($2 / $3))
maradek=$(($2 % $3))

echo "Összeg: $osszeg"
echo "Különbség: $kulonbseg"
echo "Szorzat: $szorzat"
echo "Hányados: $hanyados"
echo "Maradék: $maradek"
