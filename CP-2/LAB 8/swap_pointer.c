#include<stdio.h>
void main()
{
	int *p1,*p2;
	int a=0,b=0,temp=0;
	
	p1=&a;
	p2=&b;
	
	printf("Enter Two Value To Swap : ");
	scanf("%d%d",p1,p2);
	
	temp=*p1;
	*p1=*p2;
	*p2=temp;
	printf("Swaped Values : A:%d B:%d",*p1,*p2);	
}