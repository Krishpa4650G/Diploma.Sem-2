#include<stdio.h>
struct employee
{
	char name[50];
	int id;
	char des[50];
	float sal;
}emp1;

union employee2
{
	char name[50];
	int id;
	char des[50];
	float sal;
}emp2;
void main()
{
	printf("Size Of Structure Is : %ld",sizeof(emp1));
	printf("\nSize Of Union Is : %ld",sizeof(emp2));

}