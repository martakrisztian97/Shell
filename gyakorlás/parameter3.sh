#!/bin/bash

#Írj egy shell script-et, ami hibajelzést ad, ha nem pontosan 3 paramétere van.
#Ha 3 paramétert kapott, írja ki őket fordított sorrendben.

if [ $# -ne 3 ]
then
	echo "3 paraméter szükséges"
	echo "parameter3.as <param1> <param2> <param3>"
	exit 1
fi

echo "$3 $2 $1"
