#include <stdio.h>
#include <ctype.h>

int main() {
    FILE *fpIn = fopen("Words.txt", "r");
    FILE *fpOut = fopen("capitalized.txt", "w");

    if (!fpIn || !fpOut) {
        printf("File error!\n");
        return 1;
    }

    char ch;
    int newWord = 1;

    while ((ch = fgetc(fpIn)) != EOF) {
        if (isspace(ch)) {
            newWord = 1;
            fputc(ch, fpOut);
        } else {
            if (newWord) {
                fputc(toupper(ch), fpOut);
                newWord = 0;
            } else {
                fputc(ch, fpOut);
            }
        }
    }

    fclose(fpIn);
    fclose(fpOut);

    printf("Capitalized output saved to 'capitalized.txt'.\n");
    return 0;
}
