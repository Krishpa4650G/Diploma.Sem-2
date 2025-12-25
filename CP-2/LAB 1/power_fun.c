#include<stdio.h>
int power(int,int);
void main()
{
	int pwr,base,ans=0;
	printf("Enter Number : ");
	scanf("%d",&base);

	printf("Enter Power : ");
	scanf("%d",&pwr);

	ans=power(pwr,base);
	printf("Ans Is %d",ans);
}

int power(int pwr,int base)
{
	int ans=1;
	if(pwr==0)
	{
		return 1;
	}
	else
	{
		ans=base*power(pwr-1,base);
		return ans;
	}
}

