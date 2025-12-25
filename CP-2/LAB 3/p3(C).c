#include<stdio.h>
int power(int,int);
void main()
{
	int n=0,i=1;
	
	printf("ENTER NUMBER : ");
	scanf("%d",&n);
	printf("Enter Power : ");
	scanf("%d",&i);	
	printf("Ans Is %d",power(n,i));
}
int power(int n,int i)
{
	int res=1;
	
	if(i==0)
	{
		return 1;
	}
	else
	{
		res=n*power(n,i-1);
		return res;
	}
}
