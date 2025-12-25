#include<stdio.h>
void main()
{
	int a[50],n=0,i=0;
	int *p;
	p=a;
	
	printf("Enter Size of Array :");
	scanf("%d",&n);
	
	printf("Enter Array : ");
	for(i=0;i<n;i++)
	{
		scanf("%d",&a[i]);
	}
	
	printf("Entered Array : ");
	for(i=0;i<n;i++)
	{
		printf("%d\n",*(p+i));
	}	
}
