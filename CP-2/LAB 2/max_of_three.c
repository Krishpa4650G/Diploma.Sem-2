#include<stdio.h>
int max();
void main()
{
	float ans;
	ans=max()
	
	printf("%d IS MAX\n",ans);
}

int max()
{
	float a=0,b=0,c=0,max=0;

	printf("ENTER FIRST NUMBER : ");
	scanf("%d",&a);

	printf("ENTER SECOND NUMBER : ");
	scanf("%d",&b);

	printf("ENTER THIRD NUMBER : ");
	scanf("%d",&c);

	if(a>b)
	{
		if(a>c)
		{
			max=a;
		}
		else
		{
			max=c;
		}
	}
	else
	{
		if(b>c)
		{
			max=b;
		}
		else
		{
			max=c;
		}
	}
	return max;
}