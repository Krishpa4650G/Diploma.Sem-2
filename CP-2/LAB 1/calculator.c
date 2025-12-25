#include<stdio.h>
void main()
{
	int n=0,ans=0,a=0,b=0;

	printf("ENTER NUMBER FOR OPRATION\n");
	printf("1 FOR ADDITION\n");
	printf("2 FOR SUBTRACTION\n");
	printf("3 FOR MULTIPLICATION\n");
	printf("4 FOR DIVISION");
	scanf("%d",&n);

	printf("ENTER FIRST VALUE : ");
	scanf("%d",&a);

	printf("ENTER SECOND VALUE : ");
	scanf("%d",&b);

	switch(n)
	{
		case 0:
		{
			printf("ENTER PROPER VALUE \n");
		}
		case 1:
		{
			ans=a+b;
			printf("ANSWER IS %d",ans);
			break;
		}
		case 2:
		{
			ans=a-b;
			printf("ANSWER IS %d",ans);
			break;
		}
		case 3:
		{
			ans=a*b;
			printf("ANSWER IS %d",ans);
			break;
		}
		case 4:
		{
			ans=a/b;
			printf("ANSWER IS %d",ans);
			break;
		}
		
	}
}