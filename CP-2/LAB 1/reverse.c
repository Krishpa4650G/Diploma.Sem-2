#include<stdio.h>
void main()
{
	int n=0,i=0,ans=0;

	printf("ENTER A NUMBER : ");
	scanf("%d",&n);

	while(n!=0)
	{
		i=n%10;
		n=n/10;
		ans=(ans*10)+i;
	}
	printf("%d is Ans",ans);
}