#include<stdio.h>
void main()
{
	int n,count=0;

	printf("ENTER A NUMBER : ");
	scanf("%d",&n);
	while(n!=0)
	{
		n=n/10;
		count++;
	}
	printf("%d IS DIGIT COUNT",count);

}