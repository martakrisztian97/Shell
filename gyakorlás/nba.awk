#!/bin/awk -f

BEGIN {
FS=";"
meccs=0;
kulonbseg;
maxKulonbseg=-1;
maxH;
maxV;
maxHP;
maxVP;
raptorsDb=0;
raptorsPont=0;
osszPont;
maxOsszPont=0;
maxH2;
maxV2;
maxHP2;
maxVP2;
}

{
	meccs++;

	if ($1 == "Warriors" || $2 == "Warriors") {
		printf("%s %d - %s %d\n", $1, $3, $2, $4);
	}
	
	kulonbseg=$3-$4;

	if (kulonbseg < 0) {
		kulonbseg=kulonbseg*-1;
	}

	if (maxKulonbseg < kulonbseg) {
		maxKulonbseg=kulonbseg;
		maxH=$1;
		maxV=$2;
		maxHP=$3;
		maxVP=$4;
	}

	if ($1 == "Raptors") {
		raptorsDb++;
		raptorsPont=raptorsPont+$3;
	}

	osszPont=$3+$4;

	if (osszPont > maxOsszPont) {
		maxOsszPont=osszPont;
		maxH2=$1;
		maxV2=$2;
		maxHP2=$3;
		maxVP2=$4;
	}

}

END {
print "";
printf("%d mérkőzés szerepel az állományban.\n", meccs); 
print "";
printf("A legnagyobb különbségű győzelem %d pont volt az alábbi mérkőzésen:\n%s %d - %s %d\n", maxKulonbseg, maxH, maxHP, maxV, maxVP);
print "";
printf("A Raptors otthoni mérkőzésein elért átlagpontszáma: %.2f\n", (raptorsPont/raptorsDb));
print "";
printf("A legtöbb kosarat a %s - %s mérkőzésen dobták. (%d pont)\n", maxH2, maxV2, maxOsszPont);
}
