#!/bin/bash

karakter=0
jeles=0
while [ $karakter != "q" ]
do
	read -p "Karakter: " karakter
	if [ $karakter == 1 ]
	then
		echo "Érdemjegy: elégtelen (1)"
	fi

	if [ $karakter == 2 ]
	then
		echo "Érdemjegy: elégséges (2)"
	fi

	if [ $karakter == 3 ]
        then
                echo "Érdemjegy: közepes (3)"
        fi

        if [ $karakter == 4 ]
        then
                echo "Érdemjegy: jó (4)"
        fi

	if [ $karakter == 5 ]
        then
                echo "Érdemjegy: jeles (5)"
		jeles=$((jeles+1))
        fi
done

echo "$jeles jeles érdemjegyet adtunk meg."
