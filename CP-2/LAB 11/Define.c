#include <stdio.h>

#define PI 3.14159
#define AREA(radius) (PI * (radius) * (radius))

int main() {
    float r;

    printf("Enter radius: ");
    scanf("%f", &r);

    printf("Area of circle: %.2f\n", AREA(r));
    return 0;
}
