#!/bin/bash

if [ $# -ne 2  ]
then
	echo "2 paraméter szükséges"
	exit 1
fi

`mkdir $1`
`mkdir $1/$2`
chmod a=r $1/$2
ls -l $1/
