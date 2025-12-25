#include<stdio.h>
struct student
{
	char name[30];
	float per;
	int age;
};
void main()
{

	int i;
	
	struct student s[5];
	for(i=0;i<5;i++)
	{
		printf("\nEnter Name : ");
		scanf("%s",s[i].name);

		printf("\nEnter age : ");
		scanf("%d",&s[i].age);

		printf("\nEnter percentage : ");
		scanf("%f",&s[i].per);

		printf("\nName : ");
		puts(s[i].name);

		printf("\nAge : %d",s[i].age);
		printf("\nPercentage : %f",s[i].per);
	}
}
	
