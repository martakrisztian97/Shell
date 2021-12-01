#!/bin/bash

if [ $# -ne 3 ]
then
	echo "3 paraméter szükséges"
	echo "haromszog.sh <a> <b> <c>"
	exit 1
fi

re='^[0-9]+$'
if ! [[ $1 =~ $re ]]
then
	echo "Minden paraméternek számot adjon meg!"
	exit 2
fi

if ! [[ $2 =~ $re ]]
then
	echo "Minden paraméternek számot adjon meg!"
	exit 3
fi

if ! [[ $3 =~ $re ]]
then
	echo "Minden paraméternek számot adjon meg!"
	exit 4
fi

if [$1 -le 0 ]
then
	echo "Nullánál nagyobb számokat adjon meg!"
	exit 5
fi

if [$2 -le 0 ]
then
	echo "Nullánál nagyobb számokat adjon meg!"
	exit 6
fi

if [$3 -le 0 ]
then
	echo "Nullánál nagyobb számokat adjon meg!"
	exit 7
fi

