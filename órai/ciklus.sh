#!/bin/bash

echo "Tartalomjegyzék:"

select valasztas in Lista Forciklus Ctípusú Összeg Whileciklus Untilciklus KILÉPÉS
do
	echo "Válasz: $valasztas"
	echo "REPLY tartalma: $REPLY"

if [ $valasztas = "Forciklus" ]
then
	lista=`ls -al`

	for allomany in alma körte szilva barack
	do
		echo $allomany
	done
fi

if [ $REPLY -eq 3 ]
then
	ossz=0
	for i in $(seq 1 10)
	do
		ossz=$(($ossz+$i))
	done
	echo "Összeg: $ossz"
fi

if [ $REPLY -eq 4 ]
then
	for (( j=1; j<11; j++ ))
	do
		echo "$j"
	done
fi

if [ $REPLY -eq 5 ]
then
	ossz=1
	i=1
	while [ $ossz -le 1000 ]
	do
		echo "$ossz $i"
		ossz=$(( $ossz +($ossz*i) ))
		i=$(( $i+1 ))
	done
fi

if [ $REPLY -eq 6 ]
then
	ossz=0
	until [ $ossz -ge 100 ]
	do
		echo $ossz	
		ossz=$(($ossz+10))
	done
fi

if [ $REPLY = 7 ]
then
	exit 0
fi

done
