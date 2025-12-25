#include<stdio.h>
void print(int[]);
void main()
{
	int a[10],i=0;
	printf("Enter Array : ");
	for(i=0;i<10;i++)
	{
		scanf("%d",&a[i]);
	}
	print(a);
}

void print(int a[])
{
	int i=0;
	printf("Entered Array : ");
	for(i=0;i<10;i++)
	{
		printf("%d\n",a[i]);
	}
}
