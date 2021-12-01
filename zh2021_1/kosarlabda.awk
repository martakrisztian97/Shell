#!/bin/awk -f

BEGIN{
FS=";"
heatMeccs=0;
spursNyert=0;
min=1000;
}

{ #nyitó

if ($1 == "Heat" || $2 == "Heat") {
	heatMeccs++;
}

if ($1 == "Warriors" || $2 == "Warriors") {
	printf("%s %d - %s %d\n",$1 ,$3, $2, $4);
}

if ($1 == "Spurs" && ($3-$4 > 0)) {
	spursNyert++;
}

if ($2 == "Spurs" && ($4-$3 > 0)) {
	spursNyert++
}

kulonbseg=$3-$4;
if (kulonbseg < 0) {
	kulonbseg=kulonbseg*-1;
}

if (kulonbseg < min) {
	min=kulonbseg;
}

} #záró

END{
printf("A heat %d mérkőzést játszott.\n", heatMeccs);
printf("A Spurs %d mérkőzést nyert.\n", spursNyert);
printf("A legkisebb különbségű győzelem %d pont volt\n", min);
}
