#include<stdio.h>
int add();
int multi();
int divi();
int sub();
void main()
{
	int n;
	printf("ENTER VALUE FOR OPERATION : \n");
	printf("1 - ADD,2 - SUB, 3 - MULTI, 4 - DIVI");
	scanf("%d",&n);

	switch(n)
	{
	case 1:
		{
			add();
		}
	case 2:
		{
			sub();
		}
	case 3:
		{
			multi();
		}
	case 4:
		{
			divi();
		}	
	}
}

int add()
{
	int a=0,b=0,ans=0;
	printf("ENTER 2 VALUES :");
	scanf("%d%d",a,b);

	ans=a+b;
}
int multi()
{
	int a=0,b=0,ans=0;
	printf("ENTER 2 VALUES :");
	scanf("%d%d",a,b);

	ans=a*b;
}
int sub()
{
	int a=0,b=0,ans=0;
	printf("ENTER 2 VALUES :");
	scanf("%d%d",a,b);

	ans=a-b;
}
int divi()
{
	int a=0,b=0,ans=0;
	printf("ENTER 2 VALUES :");
	scanf("%d%d",a,b);

	ans=a/b;
}