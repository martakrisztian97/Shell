#!/bin/awk -f

BEGIN {
sor=0;
szo=0;
}

{
	if($1 ~ /^Ed/) {
		print "KIRÁLY";
		print $0;
		sor++;
		szo=szo+NF;
	}
}

END {
printf("A sorok száma: %5d\n", sor);
printf("A szavak száma: %5d\n", szo);
printf("Átlagos szószám: %5.2f\n", (szo/sor));
}
