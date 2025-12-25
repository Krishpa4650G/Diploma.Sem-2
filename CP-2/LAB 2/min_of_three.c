#include<stdio.h>
int min();
void main()
{
	int ans;
	ans=min()
	
	printf("%d IS MIN\n",ans);
}

int min()
{
	int a=0,b=0,c=0,min=0;

	printf("ENTER FIRST NUMBER : ");
	scanf("%d",&a);

	printf("ENTER SECOND NUMBER : ");
	scanf("%d",&b);

	printf("ENTER THIRD NUMBER : ");
	scanf("%d",&c);

	if(a<b)
	{
		if(a<c)
		{
			min=a;
		}
		else
		{
			min=c;
		}
	}
	else
	{
		if(b<c)
		{
			min=b;
		}
		else
		{
			min=c;
		}
	}
	return min;
}