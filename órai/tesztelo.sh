#!/bin/bash

if [ $# -lt 1 ]
then
	echo "Nem adta meg a tesztkérdéseket tartalmazó állományt!"
	exit 1
fi

read -p "Neved: " nev
valaszok=${nev}"_valaszai.dat"
kerdesszam=0
helyesszam=0

exec 7<"$1"

while read -u 7 kerdes
do
	echo $kerdes | tee -a $valaszok
	kerdesszam=$((kerdesszam+1))
	read -u 7 opcio1
	read -u 7 opcio2
	read -u 7 helyes
	echo  $helyes>>$valaszok
	echo "1) " $opcio1
	echo "2) " $opcio2
	read -p "Írja be a helyes válasz sorszámát: " -n 1 -t 10 valasz
	echo -e "\n"

	if [ -z $valasz  ]
	then
		valasz="timeout"
	fi

	if [ $valasz == "1" ]
	then
		echo $opcio1>>$valaszok
		valaszszoveg=$opcio1
	elif [ $valasz == "2" ]
	then
		echo $opcio2>>$valaszok
		valaszszoveg=$opcio2
	else
		echo "Hibás sorszám! "$valasz>>$valaszok
		valaszszoveg=""
	fi
	
	if [ $helyes = $valaszszoveg ]
	then 
		helyesszam=$((helyesszam+1))
	fi
done

echo "Kérdések száma: $kerdesszam"
echo "Helyes válaszok száma: $helyesszam"
echo "Százalék: $(( (helyesszam*100)/(kerdesszam) ))%"
