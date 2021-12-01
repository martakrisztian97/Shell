#!/bin/bash

#Írj szkriptet paritas.sh néven, amely kiírja, hogy a paraméterben kapott
#számok közül mennyi páros, mennyi páratlan és mennyi 0! Figyeljen arra, hogy
# csak nullától nagyobb számokat adhat meg paraméterként!

paros=0
paratlan=0
nulla=0

for i in $*
do
	if ! [[ $i =~ ^[0-9]+$ ]]
	then
		echo "Minden paraméter szám legyen!"
		exit 1
	fi

	if [ $i -lt 0 ]
        then
                echo "Minden paraméter nullától nagyobb szám legyen!"
                exit 2
        fi
done

for szam in $*
do
	if [ $szam -ne 0 ]
	then
		if [[ $((szam%2)) -eq 0 ]]
		then
			paros=$((paros+1))
		else
			paratlan=$((paratlan+1))
		fi
	else
		nulla=$((nulla+1))
	fi
done

echo "Páros számok száma $paros darab."
echo "Páratlan számok száma $paratlan darab."
echo "Nullák száma $nulla darab."
