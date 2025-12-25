#include <stdio.h>

int main() {
    char source[100], destination[100];
    char *srcPtr = source;
    char *destPtr = destination;

    // Input the source string
    printf("Enter a string: ");
    fgets(source, sizeof(source), stdin);

    // Copying string using pointers
    while (*srcPtr != '\0') {
        *destPtr = *srcPtr;
        srcPtr++;
        destPtr++;
    }
    *destPtr = '\0';  // Null-terminate the destination string

    // Output the copied string
    printf("Copied string: %s", destination);

    return 0;
}
