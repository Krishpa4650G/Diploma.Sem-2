#include <stdio.h>

int main() {
    FILE *file1, *file2;
    char ch;

    file1 = fopen("file1.txt", "a");
    file2 = fopen("file2.txt", "r");

    if (file1 == NULL || file2 == NULL) {
        printf("Error opening file.\n");
        return 1;
    }

    while ((ch = fgetc(file2)) != EOF) {
        fputc(ch, file1);
    }

    fclose(file1);
    fclose(file2);
    printf("File appended successfully.\n");
    return 0;
}
