#!/bin/bash

karakter=0
hanyadik=0
while [ $karakter != "q" ]
do
	read -p "Karakter: " karakter
	hanyadik=$(($hanyadik+1))
	if [ $karakter != 'q' ]
	then
		for i in $(seq 1 $hanyadik)
		do
			echo -n $karakter
		done
		echo
	fi
done
