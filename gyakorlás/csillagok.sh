#!/bin/bash

if [ $# -ne 1 ]
then
	echo "1 paraméter szükséges!"
	exit 1
fi

re='^[0-9]+$'
if ! [[ $1 =~ $re ]]
then
	echo "Számot adjon meg paraméterként!"
	exit 2
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $i)
	do
		echo -n "*"
	done
	echo ""
done
