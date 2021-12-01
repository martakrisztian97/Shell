#!/bin/bash

if [ $# -ne 1 ]
then
	echo "1 paraméter szükséges"
	echo "visszafele.sh <parameter>"
	exit 1
fi

szoveg=$1
hossz=${#szoveg}
echo "A paraméter hossza: $hossz"

echo "Ritkított: "
for (( i=0; i<=$hossz; i++ ))
do
	echo -n "${szoveg:$i:1} "
done

echo -e
echo "Visszafelé: "
for (( i=hossz; i>=0; i-- ))
do
        echo -n "${szoveg:$i:1}"
done
echo -e
