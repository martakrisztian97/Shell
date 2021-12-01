#!/bin/awk -f

BEGIN{
FS=";"
hawks=0;
raptors=0;
osszKul=0;
}

{

if ( $1 == "Hawks" || $2 == "Hawks") {
	hawks++;
}

if ( $3+0 > $4+0 ) {
	printf("%s %d - %d %s\n", $1, $3, $4, $2);
}

if ( $1 == "Raptors" ) {
	raptors+=$3;
}

if ( $2 == "Raptors" ) { 
        raptors+=$4;
}

kulonbseg=$3-$4;
if (kulonbseg < 0) {
	kulonbseg*=-1;
}
osszKul+=kulonbseg;

}

END{
printf("%d mérkőzést játszott a Hawks.\n", hawks);
printf("Raptors összes pontja: %d\n", raptors);
printf("Átlagos pontkülönbség: %2.2f\n", osszKul/NR);
}
