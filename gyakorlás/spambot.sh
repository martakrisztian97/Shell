#!/bin/bash

#Írj szkriptet spambot.sh néven, amely két paramétert kap: rendre egy szöveget
#és egy számot! Ha a szám 1-nél kisebb, akkor írasd ki a Hiba szöveget a
#konzolra! Ellenkező esetben a szkript írja ki annyiszor az első paraméterben
#érkező szöveget, mint amennyi a második paraméterben kapott szám!

if [ $# -ne 2 ]
then
	echo "2 paraméter szükséges!"
	echo "spambot.sh <szöveg> <szám>"
	exit 1
fi

if ! [[ $2 =~ ^[0-9]+$ ]]
then
	echo "2. paraméternek számot adjon meg!"
	exit 2
fi

if [ $2 -lt 1 ]
then
	echo "2. paraméternek nullánál nagyobb számot adjon meg!"
	exit 3
fi

for i in $(seq 1 $2)
do
	echo $1
done
