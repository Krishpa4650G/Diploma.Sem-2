#include<stdio.h>
void main()
{
	int n=0,ans=0,i;

	printf("ENTER TABLE : ");
	scanf("%d",&n);

	for(i=1;i<=10;i++)
	{
		ans=n*i;
		printf("%d * %d = %d",n,i,ans);
	}
}