#!/bin/bash

if [ $# -ne 1 ]
then
	echo "1 paraméter szükséges"
	exit 1
fi

letezik=`test -e $1; echo $?`
allomany=`test -f $1; echo $?`
alkonyvtar=`test -d $1; echo $?`
ures=`test -s $1; echo $?`
futtathato=`test -x $1; echo $?`
echo "Létezik a(z) $1? $letezik"
echo "Állomány-e a(z) $1? $allomany"
echo "Alkönyvtár-e a(z) $1? $alkonyvtar"
echo "Üres-e a(z) $1? $ures"
echo "Futtatható-e a(z) $1? $futtathato"
