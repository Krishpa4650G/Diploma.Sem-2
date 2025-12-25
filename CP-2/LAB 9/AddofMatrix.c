#include <stdio.h>
int main() {
    int A[3][3], B[3][3], SUM[3][3];
    int *pA = &A[0][0], *pB = &B[0][0], *pS = &SUM[0][0];

    // Input for Matrix A
    printf("Enter elements of Matrix A (3x3):\n");
    for (int i = 0; i < 3 * 3; i++) {
        scanf("%d", pA + i);
    }

    // Input for Matrix B
    printf("Enter elements of Matrix B (3x3):\n");
    for (int i = 0; i < 3 * 3; i++) {
        scanf("%d", pB + i);
    }

    // Adding matrices using pointers
    for (int i = 0; i < 3 * 3; i++) {
        *(pS + i) = *(pA + i) + *(pB + i);
    }

    // Printing result
    printf("Sum of the two matrices:\n");
    for (int i = 0; i < 3 * 3; i++) {
        printf("%d\t", *(pS + i));
        if ((i + 1) % 3 == 0)
            printf("\n");
    }
    return 0;
}
