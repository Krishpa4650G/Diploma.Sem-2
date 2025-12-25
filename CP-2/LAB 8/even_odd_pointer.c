#include<stdio.h>
void main()
{
	int a[50],n=0,i=0,evn=0,odd=0;
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
		if(*(p+i)%2==0)
		{
			evn++;
		}
		else
		{
			odd++;
		}
	}
	printf("Even : %d\n\n",evn);
	printf("Odd : %d",odd);
}
