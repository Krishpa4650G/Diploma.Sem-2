#include<stdio.h>
void main()
{
	int *p1;
	int a1=10;
	float *p2;
	float a2=1.1;
	double *p3;
	double a3=12213213;
	char *p4;
	char a4='A';
	
	p1=&a1;
	p2=&a2;
	p3=&a3;
	p4=&a4;
	
	printf("Value of Int:%u Address of Int:%u \n\n",*p1,p1);
	printf("Value of Float:%f Address of Float:%u \n\n",*p2,p2);
	printf("Value of Double:%lf Address of Double:%u \n\n",*p3,p3);
	printf("Value of Char:%c Address of Char:%u \n\n",*p4,p4);
}
