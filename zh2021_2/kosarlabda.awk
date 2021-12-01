#!/bin/awk -f

BEGIN {
FS=";"
meccs=0;
maxKulonbseg=-1;
maxH;
maxV;
maxHPont;
maxVPont;
raptorsDb=0;
raptorsPont=0
}

{

meccs++;

if ( $1 == "Warriors" || $2 == "Warriors") {
	printf("%s %d - %s %d\n", $1, $3, $2, $4)
}

kulonbseg=$3-$4;

if (kulonbseg < 0) {
	kulonbseg=kulonbseg*-1;
}

if (maxKulonbseg < kulonbseg) {
	maxKulonbseg=kulonbseg;
	maxH=$1;
	maxV=$2;
	maxHPont=$3;
	maxVPont=$4;
}

if ($1 == "Raptors") {
	raptorsDb++;
	raptorsPont=raptorsPont+$3;
}

}

END{
printf("\n%d mérkőzés szerepel az állományban.\n", meccs);
printf("\nA legnagyobb különbségű győzelem %d pont volt.\n", maxKulonbseg);
printf("Ez a mérközés a következő volt: %s %d - %s %d\n", maxH, maxHPont, maxV, maxVPont);
printf("\nA Raptors hazai mérkőzésein elért átlagpontszáma: %.2f pont\n", (raptorsPont/raptorsDb));
}
