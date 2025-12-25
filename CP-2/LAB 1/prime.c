#include<stdio.h>
void main()
{
	int n=0,i=2,flag=0;

	printf("ENTER A NUMBER : ");
	scanf("%d",&n);

	while(i<n)
	{
		if(n%i==0)
		{
			flag++;
			break;
		}
		i++;
	}
	if(flag==1)
	{
		printf("IT IS PRIME");
	}
	else
	{
		printf("IT IS NOT PRIME");
	}
}