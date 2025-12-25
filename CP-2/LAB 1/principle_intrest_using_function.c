#include<stdio.h>
void intrest();
void main()
{
	intrest();
}
void min()
{
	int a=0,in=0,t=0,si=0;

	printf("ENTER AMOUNT : ");
	scanf("%d",&a);

	printf("ENTER INTREST : ");
	scanf("%d",&in);

	printf(" ENTER TIME : ");
	scanf("%d",&t);

	si=(a*in*t)/100;

	printf("PRINCIPLE INTREST = %d",si);
}