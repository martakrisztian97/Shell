#!/bin/bash

if [ $# -ne 2 ]
then
	echo "2 paraméter szükséges!"
	exit 1
fi

letezik=`test -e $1/$2; echo $?`
if [ $letezik -eq 0 ]
then
	echo "Létezik a $1/$2 fájl!"
	exit 2
fi

mkdir $1
echo "Vizsgafeladat megoldása" > $1/$2
chmod 044 $1/$2
chmod 044 $1/
