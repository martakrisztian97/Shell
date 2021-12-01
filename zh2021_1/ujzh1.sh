#!/bin/bash

if [ $# -ne 2 ]
then
	echo "2 paraméter szükséges"
	echo "ujzh1.sh <mappa1> <mappa2>"
	exit 1
fi

letezik1=`test -d $1; echo $?`
letezik2=`test -d $2; echo $?`

if [ $letezik1 -eq 1 ]
then
	echo "$1 nevű alkönyvtár nem létezik!"
fi

if [ $letezik2 -eq 1 ]
then 
        echo "$2 nevű alkönyvtár nem létezik!"
fi

if [ $letezik1 -eq 0 ] && [ $letezik2 -eq 0 ]
then
	mv $1/ tmptmp/
	mv $2/ $1/
	mv tmptmp/ $2/
	chmod 544 $1/
	chmod 544 $2/
fi
