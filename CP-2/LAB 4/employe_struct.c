#include<stdio.h>
#include<string.h>
struct employee
{
	char name[50];
	int id;
	char des[50];
	float sal;
}emp;
void main()
{
	printf("Enter Name : ");
	scanf("%s",emp.name);
	printf("Enter Id : ");
	scanf("%d",&emp.id);
	printf("Enter Designation : ");
	scanf("%s",emp.des);
	printf("Enter Salary : ");
	scanf("%f",&emp.sal);

	printf("\nEntered Name : ");
	puts(emp.name); 
	printf("\nEnter Id : %d\n",emp.id);
	printf("Entered Designation : ");
	puts(emp.des);
	printf("Enter Salary : %f",emp.sal);
}