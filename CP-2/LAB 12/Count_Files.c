#include <stdio.h>

int main() {
    FILE *fp = fopen("example.txt", "r");
    if (!fp) {
        printf("File not found!\n");
        return 1;
    }

    char ch;
    int chars = 0, spaces = 0, tabs = 0, newlines = 0;

    while ((ch = fgetc(fp)) != EOF) {
        chars++;
        if (ch == ' ') spaces++;
        else if (ch == '\t') tabs++;
        else if (ch == '\n') newlines++;
    }

    fclose(fp);

    printf("Characters: %d\nSpaces: %d\nTabs: %d\nNew Lines: %d\n", chars, spaces, tabs, newlines);
    return 0;
}
