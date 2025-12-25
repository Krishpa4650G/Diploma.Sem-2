#include <stdio.h>

#define PRINT(x) printf("Value: %d\n", x)

int main() {
    int a = 42;
    PRINT(a);   // Will expand to: printf("Value: %d\n", a);
    PRINT(100); // Works with constants too
    return 0;
}
