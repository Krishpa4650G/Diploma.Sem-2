#include <stdio.h>

int main() {
    char str[100];
    char *ptr;
    int length = 0;

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);  // Reads string with spaces safely

    ptr = str; // Pointer points to the first character of the string

    while (*ptr != '\0' && *ptr != '\n') {
        length++;
        ptr++; // Move to next character
    }

    printf("Length of the string: %d\n", length);

    return 0;
}
