#include<stdio.h>
int factorial(int);
void main()
{
	int n=0;
	
	printf("ENTER NUMBER FOR FACTORIAL : ");
	scanf("%d",&n);
	
	printf("Factorial Is %d",factorial(n));
}
int factorial(int n)
{
	int res=1;
	
	if(n==1||n==0)
	{
		return 1;
	}
	else
	{
		res=n*factorial(n-1);
		return res;
	}
}
