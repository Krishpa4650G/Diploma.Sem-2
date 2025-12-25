#include<stdio.h>
void fibbo();
void main()
{
	fibbo();
}
void fibbo()
{
	int a=0,b=1,n=0,i=0;

	printf("ENTER NUMBER OF SERIES : ");
	scanf("%d",&n);

	while(i<=n)
	{
		printf("%d\n",a);
		a=b;
		b=a+b;
		i++;
	}
}	