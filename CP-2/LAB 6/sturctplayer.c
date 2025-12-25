#include<stdio.h>
struct player
{
	
	char name[50];
	char team[50];
	int sc;
	float avg;

}p;
void main()
{
	int i=0;
	for(i=0;i<3;i++)
	{
		printf("Enter Name : ");
		scanf("%s",p.name);
		printf("Enter Team : ");
		scanf("%s",p.team);
		printf("Enter Score And Average : ");
		scanf("%d%d",&p.sc,&p.avg);
	}

	for(i=0;i<3;i++)
	{
		printf("\nEntered Name : ");
		printf("%s",p.name);
		printf("\nEntered Team : ");
		printf("%s",p.team);
		printf("\nEntered Score And Average : ");
		printf("%d\t%d",&p.sc,&p.avg);
	}
}
