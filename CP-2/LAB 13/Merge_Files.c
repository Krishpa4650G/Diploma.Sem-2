#include <stdio.h>
#include <string.h>

int main() {
    FILE *f1, *f2, *fout;
    char line1[1000], line2[1000];

    f1 = fopen("file1.txt", "r");
    f2 = fopen("file2.txt", "r");
    fout = fopen("merged.txt", "w");

    if (f1 == NULL || f2 == NULL || fout == NULL) {
        printf("Error opening file.\n");
        return 1;
    }

    while (!feof(f1) || !feof(f2)) {
        if (fgets(line1, sizeof(line1), f1)) {
            fputs(line1, fout);
        }
        if (fgets(line2, sizeof(line2), f2)) {
            fputs(line2, fout);
        }
    }

    fclose(f1);
    fclose(f2);
    fclose(fout);
    printf("Alternate lines merged successfully.\n");
    return 0;
}
