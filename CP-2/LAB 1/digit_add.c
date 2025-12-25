#include<stdio.h>
void main()
{
	int n,ans=0,i=0;

	printf("ENTER A NUMBER : ");
	scanf("%d",&n);
	while(n!=0)
	{
		i=n%10;
		n=n/10;
		ans=ans+i;
	}
	printf("%d IS ADDITION",ans);

}