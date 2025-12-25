#include<stdio.h>
#include<string.h>
void low(char[]);
void main()
{
	char str[20];
	printf("Enter String : ");
	gets(str);

	low(str);
}

void low(char str[])
{
	strlwr(str);
	puts(str);
}