#!/bin/bash

echo "Hello World"
pwd
echo "A Királyi sorok száma:"
grep "[Kk]irály" walesi.txt | wc -l
#mkdir walesi
cp walesi.txt ./walesi
ls -l walesi

echo "Helyes? " $?

sor="Ez itt egy sor"
szam1=5
szam2=6

echo $sor
echo $szam1+$szam2
