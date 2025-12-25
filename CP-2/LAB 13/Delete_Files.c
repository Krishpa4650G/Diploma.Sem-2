#include <stdio.h>
#include <string.h>

int main() {
    FILE *fin = fopen("input.txt", "r");
    FILE *fout = fopen("output.txt", "w");
    char line[1000];
    int lineCount = 0;

    if (fin == NULL || fout == NULL) {
        printf("Error opening file.\n");
        return 1;
    }

    while (fgets(line, sizeof(line), fin)) {
        // Check if the line is not blank
        if (strcmp(line, "\n") != 0) {
            fputs(line, fout);
            lineCount++;

            // Insert blank line after 3rd non-blank line
            if (lineCount == 3) {
                fputc('\n', fout);
            }
        }
    }

    fclose(fin);
    fclose(fout);
    printf("Processed file with blank lines handled.\n");
    return 0;
}
