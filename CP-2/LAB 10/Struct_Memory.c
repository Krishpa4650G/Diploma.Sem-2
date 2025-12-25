#include <stdio.h>
#include <stdlib.h>

struct Student {
    int id;
    char name[50];
    float marks;
};

int main() {
    struct Student *ptr = (struct Student *)malloc(sizeof(struct Student));

    if (!ptr) {
        printf("Memory allocation failed!\n");
        return 1;
    }

    // Input data
    printf("Enter ID: ");
    scanf("%d", &ptr->id);
    printf("Enter Name: ");
    scanf("%s", ptr->name);
    printf("Enter Marks: ");
    scanf("%f", &ptr->marks);

    // Output data
    printf("\nStudent Details:\n");
    printf("ID: %d\n", ptr->id);
    printf("Name: %s\n", ptr->name);
    printf("Marks: %.2f\n", ptr->marks);

    free(ptr);

    return 0;
}
