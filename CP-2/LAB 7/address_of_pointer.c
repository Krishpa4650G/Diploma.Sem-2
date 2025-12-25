#include<stdio.h>
void main()
{
	int *p;
	int p1=0;
	
	p=&p1;
	printf("Enter value here : ");
	scanf("%d",&p1);
	printf("%u is Address",p);
}
