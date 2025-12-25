#include <stdio.h>

int main() {
    FILE *fp = fopen("reverse.txt", "r");
    if (!fp) {
        printf("File not found!\n");
        return 1;
    }

    fseek(fp, 0, SEEK_END);  // Move to end of file
    long size = ftell(fp);   // Get total size in bytes

    printf("File in reverse:\n");

    for (long i = size - 1; i >= 0; i--) {
        fseek(fp, i, SEEK_SET);
        putchar(fgetc(fp));
    }

    fclose(fp);
    return 0;
}
