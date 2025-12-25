#include<stdio.h>
void prime();
void main()
{
	prime();
}
void prime()
{
	int i=0,n=0,m=2,flag=0;

	printf("ENTER STARTING POINT : ");
	scanf("%d",&i);
	printf("ENTER ENDING POINT : ");
	scanf("%d",&n);

	printf("PRIME NUMBER ARE : ");
	for(flag=0;i<=n;i++)
	{
		for(m=2;i<m;m++)
		{
			if(i%m==0)
			{
				flag=1;
				break;
			}	
		}
		if(flag==0)
		{
			printf("%d\n",i);
		}
	}
}