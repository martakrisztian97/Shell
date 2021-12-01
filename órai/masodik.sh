#!/bin/bash

szoveg="Ez itt egy szöveges változó"
szam=6
szam2=5

echo $szoveg $szam $szam2
echo '$szoveg'
echo `date`

lista=`ls -l`
echo "végrehajtás eredménye:" $?
echo "$lista"
echo "A string hossza: ${#lista}"
echo "${lista:11:10}"

echo "parancssori paraméterek száma: $#"
echo "$2"
echo "$*"
echo "$$"
echo "$0"

echo "${szam}szoros+${szam2}"
