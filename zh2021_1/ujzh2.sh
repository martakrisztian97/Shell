#/bin/bash

if [ $# -ne 3 ]
then
	echo "3 paraméter szükséges"
	echo "ujzh2.sh <n> <sor/oszlop> <karakter>"
	exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]]
then
	echo "Számot adjon első paraméternek!"
	exit 2
fi

if ! [[ $2 =~ ^[0-9]+$ ]]
then
        echo "Számot adjon meg második paraméternek!"
        exit 3
fi


if [ $1 -lt 1 ] || [ $1 -ge 11 ]
then
	echo "$1 nem 1-10 közötti szám!"
	exit 4
fi

if [ $2 -lt 1 ] || [ $2 -ge 11 ]
then
	echo "$2 nem 1-10 közötti szám!"
	exit 5
fi

if [ $2 -gt $1 ]
then
	echo "Hibás paraméterek, mert nagyobb a második paraméter, mint az első!"
	exit 6
fi

karakter=$3
hossz=${#karakter}
if [ $hossz -ne 1 ]
then
	echo "3. paraméternek csak 1 darab karaktert adjon meg!"
	exit 7
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $1)
	do
		if [ $i -eq $2 ] || [ $j -eq $2 ]
		then
			echo -n $3
		else
			echo -n "o"
		fi
	done
	echo
done
