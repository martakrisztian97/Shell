#!/bin/bash

if [ $# -ne 4 ]
then
	echo "4 paraméter szükséges!"
	echo "zh4.sh <átv. pénznem> <cél pénznem> <átv. összeg> <árfolyam>"
	exit 1
fi

if ! [[ $3 =~ ^[0-9]+$ ]]
then
	echo "Számot adjon meg átváltandó összegnek! (3. paraméter)"
	exit 3
fi

if ! [[ $4 =~ ^[0-9]+$ ]]
then
	echo "Számot adjon meg átváltási árfolyamnak! (4. paraméter)"
	exit 4
fi

echo "$3 $1 = $(($3/$4)) $2"
