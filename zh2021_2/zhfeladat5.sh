#!/bin/bash

if [ $# -ne 2 ]
then
	echo "2 paraméter szükséges"
	echo "<AWK állomány> <TXT állomány>"
	exit 1
fi

awk -f $1 $2
