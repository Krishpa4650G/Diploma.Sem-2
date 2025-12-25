#include <stdio.h>
#include <stdlib.h>  // For malloc() and free()

int main() {
    int *intPtr;
    char *charPtr;
    float *floatPtr;

    // Allocate memory dynamically
    intPtr = (int *)malloc(sizeof(int));
    charPtr = (char *)malloc(sizeof(char));
    floatPtr = (float *)malloc(sizeof(float));

    // Check if memory allocation was successful
    if (intPtr == NULL || charPtr == NULL || floatPtr == NULL) {
        printf("Memory allocation failed.\n");
        return 1;
    }

    // Assign values
    *intPtr = 25;
    *charPtr = 'A';
    *floatPtr = 3.14f;

    // Print values
    printf("Integer value: %d\n", *intPtr);
    printf("Character value: %c\n", *charPtr);
    printf("Float value: %.2f\n", *floatPtr);

    // Free allocated memory
    free(intPtr);
    free(charPtr);
    free(floatPtr);

    return 0;
}
