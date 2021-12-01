#!/bin/bash

# Írjunk shell programot, ami a felhasználótól egy állomány vagy
# alkönyvtár nevét kéri be a billentyűzetről, az "EXIT" szó beírásáig.
# A program minden bevitt névről megmondja, hogy létezik-e ilyen nevű
# bejegyzés vagy sem az aktuális könyvtárban. Ha létezik, akkor kiírja
# a tényét, ha nem, akkor rákérdez, hogy akarunk-e ilyen nevű állományt
# létrehozni. Ha 5 másodpercen belül y-nal válaszolunk, akkor létrehozza
# azon a néven az állományt, ha lejár az idő, vagy bármi mást írunk be,
# akkor nem csinál semmit.

valasz=0
while [ $valasz != "EXIT" ]
do
	echo -e "\n"
	read -p "Állomány neve: " valasz

	if [[ -e $valasz && $valasz != "EXIT" ]]
	then	
		echo "Létezik ilyen nevű fájl/könyvtár."
	elif [ $valasz != "EXIT" ]
	then
		read -p "Akar ilyen nevű állományt létrehozni? (y/n) " -n 1 -t 5 letrehoz

		if [ $letrehoz == "y" ]
		then
#			`mkdir $valasz`
			`>$valasz`
		fi
	fi
done
