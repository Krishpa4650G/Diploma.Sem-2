#include<stdio.h>
union player
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
		printf("\nEntred Name : ");
		printf("%s",p.name);
		printf("\nEnter Team : ");
		scanf("%s",p.team);
		printf("\nEntered Team : ");
		printf("%s",p.team);
		printf("\nEnter Score : ");
		scanf("%d",&p.sc);
		printf("\nEntered Score : ");
		printf("%d",p.sc);
		printf("\nEnter Average : ");
		scanf("%d",&p.avg);
	}
}
