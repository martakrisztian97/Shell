#!/bin/bash

if [ $# -lt 3 ]
then
	echo "Túl kevés paraméter" 1>&2
	echo "felteteles.sh <muveleti jel> <op1> <op2>"
	exit 1
fi

if [ $1 != "+" -a $1 != "-" -a $1 != "p" -a $1 =! "/" ]
then
	echo "Hibási műveleti jel"
	exit 2
fi

szam=0;

case $1 in
	"+")szam=$(($2+$3)) ;;
	"-")szam=$(($2-$3)) ;;
	"p")szam=$(($2*$3)) ;;
	"/")szam=$(($2/$3)) ;;
esac

echo "Eredmeny: " $szam
