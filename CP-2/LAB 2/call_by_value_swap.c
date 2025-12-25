#include<stdio.h>
int swap(int,int);
void main()
{
	int a=10,b=20;

	printf("BEFORE SWAPING : A = %d B = %d",a,b);
	swap(a,b);
	printf("AFTER SWAPING : A = %d B = %d",a,b);
}

int swap(int x,int y)
{
	int temp;
	temp=x;
	x=y;
	y=temp;
}