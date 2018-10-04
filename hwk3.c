#include <stdio.h>
#include <stdlib.h>

struct field {
	float lat;
	float lon;
	short alt;
	char name[5];
	unsigned char id: 2;
	unsigned char cat: 2;
	unsigned char engaged: 1;
	unsigned short year: 7;
	unsigned short month: 4;
	unsigned short day: 5;
	unsigned short hour: 5;
	unsigned short min: 6;
	unsigned short sec: 7;
};

int main()
{
	struct field data;
	FILE *myFile;
	
	if ((myFile = fopen("tracks2.dat", "rb")) == NULL) {
		printf("Could not open file");
		exit(1);
	}

	while(fread(&data, 22, 1, myFile) != 0) {
		printf("lat:%.1f long:%.1f alt:%hd", data.lat, data.lon, data.alt);
		printf(" name:");
		for (int i=0; i<5; i++)
			printf("%c", data.name[i]);
		
		switch(data.id) {
			case 0:
				printf(" id:unknows");
				break;
			case 1:
				printf(" id:friend");
				break;
			case 2:
				printf(" id:foe");
				break;
			case 3:
				printf(" id:neutral"); 
				break;
		}
		switch(data.cat) {
			case 0:
				printf(" cat:ship");
				break;
			case 1:
				printf(" cat:ground vehicle");
				break;
			case 2:
				printf(" cat:airplane");
				break;
		}
		if(data.engaged == 1)
			printf(" engaged");

				
		printf(" reported: 20%d/", data.year);
		
		switch(data.month) {
			case 1:
				printf("jan/");
				break;
			case 2:
                                printf("feb/");
                                break;
			case 3:
                                printf("mar/");
                                break;
			case 4:
                                printf("apr/");
                                break;
			case 5:
                                printf("may/");
                                break;
			case 6:
                                printf("jun/");
                                break;
			case 7:
                                printf("jul/");
                                break;
			case 8:
                                printf("aug/");
                                break;
			case 9:
                                printf("sep/");
                                break;
			case 10:
                                printf("oct/");
                                break;
			case 11:
                                printf("nov/");
                                break;
			case 12:
                                printf("dec/");
                                break;
		}
		printf("%.2d %02d:%02d:%02d", data.day, data.hour, data.min, data.sec);

		printf("\n");	


	}
	fclose(myFile);
	return(0);
}
