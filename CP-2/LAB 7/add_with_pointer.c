#include<stdio.h>
void main()
{
	int *p1,*p2;
	int a=0,b=0,c=0;
	
	p1=&a;
	p2=&b;
	
	printf("Enter Two Values : ");
	scanf("%d%d",p1,p2);
	
	c=*p1+*p2;
	printf("Addition : %d",c);
}
