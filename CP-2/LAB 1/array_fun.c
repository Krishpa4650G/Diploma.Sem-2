#include<stdio.h>
void arr(int []);
void main()
{
	int a[5],i=0;

	printf("Enter Value Of Array : ");
	for(i=0;i<5;i++){
		scanf("%d",&a[i]);
	}

	arr(a);
}
void arr( int a[])
{
	int i;
	printf("Entered Array Is : ");
	for (int i = 0; i < 5; i++)
	{
		printf("%d\n",a[i]);
	}
}