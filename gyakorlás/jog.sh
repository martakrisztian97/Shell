#!/bin/bash

if [ $# != 1 ];
then
	echo "1	paraméter szükséges!"
	exit 1
fi
chmod u+x $1
echo "A(z) $1 fájl mostantól futtatható"
