#include<stdio.h>
void main()
{
	int n=0,ans=0,i=0;
	
	printf("Enter A Number : ");
	scanf("%d",&n);

	printf("Factors :");
	while(i<=n)
	{
		if(n%i==0)
		{
			printf("%d/n",i);
		}
		i++;
	}
}