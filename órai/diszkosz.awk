#!/bin/awk -f

BEGIN{
FS=";"
legjobb="";
legnagyobb=-1;
tomb[0]="";
printf("A diszkoszdobó verseny eredményei:\n");
}

{
printf("A versenyző országa: %20s\n", $2);
printf("A versenyző neve: %20s\n", $1);
printf("Dobásainak száma: %5d\n", (NF-2));
ervenyes=0;
max=-1;
for (i=3; i<=NF; i++) {
	if ($i !~ /x/) {
		ervenyes++;
		if ($i > max) {
			max=$i;
		}
	}
}

printf("Érvényes dobásainak a száma: %5d\n", ervenyes);
printf("Legjobb dobása: %7.2f\n", max);

if(max > legnagyobb) {
	legnagyobb=max;
	legjobb=$1;
}
tomb[NR]=max";"$1;
}

END{
printf("A versenyzők száma: %5d\n", NR);
printf("A verseny győztese: %20s, %7.2f méteres dobása.\n", legjobb, legnagyobb);

for(i=1; i<=NR; i++){
	for(j=i+1; j<=NR; j++) {
		if(tomb[i] < tomb[j]) {
			seged=tomb[i];
			tomb[i]=tomb[j];
			tomb[j]=seged;
		}
	}
}

for(i=1; i<4; i++) {
	split(tomb[i], masik, ";");
	printf("%d. helyezett: %20s, %7.2f m\n", i, masik[2], masik[1]);
}

}
