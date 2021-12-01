#!/bin/bash

if [ $# -ne 2 ]
then
	echo "2 paraméter szükséges"
	echo "zh1.sh <alkonyvtar1> <alkonyvtar2>"
	exit 1
fi

if [ $1 \< $2 ]
then
	k1=$1
	k2=$2
fi

if [ $2 \< $1 ]
then
	k1=$2
	k2=$1
fi

letezik=`test -d $k1; echo $?`

if [ $letezik -eq 0 ]
then
	echo "$k1 nevű bejegyzés már létezik az aktuális könyvtárban!"
	exit 2
fi

mkdir $k1
mkdir $k1/$k2
chmod 700 $k1/
chmod 700 $k1/$k2/
