#include <stdio.h>
#include <stdlib.h>

int main() {
    int n, *arr, sum = 0;

    printf("Enter number of elements: ");
    scanf("%d", &n);

    arr = (int *)calloc(n, sizeof(int));
    if (!arr) {
        printf("Memory allocation failed!\n");
        return 1;
    }

    printf("Enter %d numbers:\n", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", arr + i);
        sum += *(arr + i);
    }

    printf("Sum = %d\n", sum);
    free(arr);

    return 0;
}
