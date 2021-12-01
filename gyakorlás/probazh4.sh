#!/bin/bash

# Írjunk shell programot, amely valuta átváltást számít ki! A programnak négy
# bemenő paramétere van a következő sorrendben: átváltandó összeg pénzneme,
# átváltandó összeg, a cél pénznem, átváltási árfolyam. A program megadott
# paraméterek alapján kiszámolja az átváltást és megjeleníti az eredményt.
# A program kezelje a kevés vagy a nem megfelelő paramétereket!
# pl. atvalt.sh ft 640 eu 320

if [ $# -lt 4 ]
then
	echo "Túl kevés paraméter!"
	echo "<ÁTV. PÉNZNEM> <ÁTV. ÖSSZEG> <CÉL PÉNZNEM> <ÁRFOLYAM>"
	exit 1
fi

if [ $# -gt 4 ]
then
	echo "Túl sok paraméter!"
	echo "<ÁTV. PÉNZNEM> <ÁTV. ÖSSZEG> <CÉL PÉNZNEM> <ÁRFOLYAM>"
	exit 2
fi

re='^[0-9]+$'
if ! [[ $2 =~ $re ]]
then
	echo "Számot adjon meg átváltandó összegnek!"
	exit 3
fi

if ! [[ $4 =~ $re ]]
then
	echo "Számot adjon meg átváltási árfolyamnak!"
	exit 4
fi

echo "$2 $1 = $(($2/$4)) $3"
