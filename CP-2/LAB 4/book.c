#include<stdio.h>
#include<string.h>
union book
{
	char name[50];
	char pub[50];
	char auth[50];
	float price;
}b[3];
void main()
{
	int i=0;
	for (int i = 0; i < 3; ++i)
	{
		printf("Enter Name Of Book : ");
		scanf("%s",b[i].name);
		printf("Entered Name Of Book : ");
		puts(b[i].name);

		printf("\nEnter Price Of Book : ");
		scanf("%f",&b[i].price);
		printf("\nEntered Price Of Book : ");
		printf("%f",b[i].price);

		printf("Enter Publication Of Book : ");
		scanf("%s",b[i].pub);

		printf("Entered Publication Of Book : ");
		puts(b[i].pub);

		printf("Enter Author Of Book : ");
		scanf("%s",b[i].auth);
		printf("Entered Author Of Book : ");
		puts(b[i].auth);


	}
}