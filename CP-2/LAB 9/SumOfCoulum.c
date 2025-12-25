#include <stdio.h>
int main() {
    int matrix[3][3];
    int *ptr = &matrix[0][0];

    // Input elements of matrix
    printf("Enter elements of a %dx%d matrix:\n", 3, 3);
    for (int i = 0; i < 3 * 3; i++) {
        scanf("%d", ptr + i);
    }

    // Calculate and print sum of each column
    printf("Sum of each column:\n");
    for (int col = 0; col < 3; col++) {
        int sum = 0;
        for (int row = 0; row < 3; row++) {
            sum += *(ptr + row * 3 + col);
        }
        printf("Column %d: %d\n", col + 1, sum);
    }

    return 0;
}
