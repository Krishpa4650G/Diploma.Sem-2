#include <stdio.h>

int main() {
    FILE *fp;

    // Create and open file in write mode
    fp = fopen("example.txt", "w");

    if (fp == NULL) {
        printf("File could not be created!\n");
        return 1;
    }

    printf("File created and opened successfully.\n");

    // Close the file
    fclose(fp);
    printf("File closed successfully.\n");

    return 0;
}
