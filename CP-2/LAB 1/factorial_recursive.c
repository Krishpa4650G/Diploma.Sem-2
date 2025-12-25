#include<stdio.h>
int fact(int);
void main()
{
	int a,factorial=0;
	printf("Enter Value for Factorial : ");
	scanf("%d",&a);
	factorial=fact(a);
	printf("Ans Is %d",factorial);
}

{	
int fact(int a)
	int ans=0;
	if(a==1||a==0)
	{
		return 1;
	}
	else
	{
		ans=a*fact(a-1);
		return ans;
	}
}