#!/bin/bash

if [ $# -ne 2 ]
then
	echo "2 paraméter szükséges"
	echo "tartalmaz.sh <string> <keresendo>"
	exit 1
fi

if [[ $1 == *"$2"* ]]
then
	echo "$1 tartalmazza $2 elemet"
else
	echo "$1 nem tartalmazza $2 elemet"
fi
