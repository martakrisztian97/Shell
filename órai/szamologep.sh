#!/bin/bash

select muvelet in Összeadás Kivonás Szorzás Osztás Maradék Kilépés
do
	if [ $muvelet != Kilépés ]
	then
		echo "Kérek két számot:"
		read szam1 szam2
	fi

	case $muvelet in
		Összeadás) echo "$szam1+$szam2=$((szam1+szam2))";;
		Kivonás) echo "$szam1-$szam2=$((szam1-szam2))";;
		Szorzás) echo "$szam1*$szam2=$((szam1*szam2))";;
		Maradék) echo "$szam1/$szam2 osztás maradéka: $((szam1%szam2))";;
		Osztás) echo "$szam1/$szam2=$((szam1/szam2))";;
		Kilépés) echo "Bye-Bye"; exit 0;;
	esac
done
