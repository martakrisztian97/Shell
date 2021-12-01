#!/bin/bash

# Írjunk shell programot, amely ha van az aktuális alkönyvtárban htm
# kiterjesztésű fájl, akkor azt átnevezi html kiterjesztésűre!
# Amennyiben egyetlen ilyen állomány sincs úgy azt írja ki!

talalat=`ls *.htm | wc -l`

if [ $talalat -eq 0 ]
then
	echo "Nincs htm kiterjesztésű fájl!"
else
	lista=`ls *.htm`
	for fajl in $lista
	do
		fajlNev=`echo $fajl | cut -d'.' -f1`
		`mv $fajl $fajlNev".html"`
	done
fi
