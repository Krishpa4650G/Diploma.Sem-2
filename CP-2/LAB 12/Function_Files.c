#include <stdio.h>

int main() {
    FILE *fp = fopen("demo.txt", "w+");
    if (!fp) {
        printf("Failed to open file.\n");
        return 1;
    }

    // fprintf
    fprintf(fp, "Name: John\nAge: 25\n");

    // fputc
    fputc('X', fp);

    // rewind to read from beginning
    rewind(fp);

    // fscanf
    char name[20];
    int age;
    fscanf(fp, "Name: %s\nAge: %d\n", name, &age);

    printf("Name from file: %s\nAge: %d\n", name, age);

    // fseek and fgetc
    fseek(fp, -1, SEEK_END); // Move to last character
    char ch = fgetc(fp);
    printf("Last character: %c\n", ch);

    fclose(fp);
    return 0;
}
