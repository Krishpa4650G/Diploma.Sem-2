#include<stdio.h>
struct student
{
	char name[30];
	float per;
	int age;
};
void main()
{

	int i,n=0;
	printf("Enter Size of Array : ");
	scanf("%d",&n);
	struct student s[n],top;
	for(i=0;i<n;i++)
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

	top.per=s[0].per;

	for(i=0;i<n;i++)
	{
		if (top.per<s[i].per)
		{
			top.per=s[i].per;
		}
	}
	printf("\n\nHighest Percentage = %f",top.per);

}
