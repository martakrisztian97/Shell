#!/bin/bash

# Írjunk shell programot, amely az "ls" parancs azon változatát adja, amelyben
# a paraméterben megadott könyvtár tartalmából csak a könyvtárakat listázza ki!
# A program kezelje le, ha a megadott alkönyvtár nem létezik, vagy nem adtunk
# meg paramétert!

if [ $# -lt 1 ]
then
	echo "Nem adott meg paramétert!"
	exit 1
fi

if [ $# -gt 1 ]
then
	echo "Túl sok paraméter!"
	exit 2
fi

letezik=`test -d ./$1; echo $?`
if [ $letezik == 1 ]
then
	echo "Nem létezik ilyen nevű könyvtár!"
	exit 3
fi

lista=`ls -d ./$1/*/`
for konyvtar in $lista
do
	echo "$konyvtar"
done
