#include<stdio.h>
void main()
{
	int a[50],n=0,i=0,pos=0,neg=0,z=0;
	int *p;
	p=a;
	
	printf("Enter Size of Array :");
	scanf("%d",&n);
	
	printf("Enter Array : ");
	for(i=0;i<n;i++)
	{
		scanf("%d",&a[i]);
	}
	
	for(i=0;i<n;i++)
	{
		if(*(p+i)>0)
		{
			pos++;
		}
		
		else if(*(p+i)==0)
		{
			z++;
		}
		
		else
		{
			neg++;
		}
	}
	printf("Positive : %d\n\n",pos);
	printf("Negative : %d\n\n",neg);
	printf("Zero : %d",z);
}
