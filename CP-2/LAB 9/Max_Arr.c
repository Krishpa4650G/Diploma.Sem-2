#include <stdio.h>
int main() {
    int matrix[3][3];
    int *ptr = &matrix[0][0];
    int max;

    // Input matrix elements
    printf("Enter elements of a %dx%d matrix:\n", 3, 3);
    for (int i = 0; i < 3 * 3; i++) {
        scanf("%d", ptr + i);
    }

    // Initialize max with the first element
    max = *ptr;

    // Find maximum using pointer
    for (int i = 1; i < 3 * 3; i++) {
        if (*(ptr + i) > max) {
            max = *(ptr + i);
        }
    }

    // Output the maximum element
    printf("Maximum element in the matrix: %d\n", max);

    return 0;
}
