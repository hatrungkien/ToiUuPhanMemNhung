#include<stdio.h>
#include "time.h"

int x, y;

int USCLN(int a, int b) {
    if (b == 0)
        return a;
    int x;
    x = a % b;
    double result;
    result = USCLN(b, x);
    return result;
}

int BSCNN(int a, int b) {
    int x;
    x = a * b;
    double y;
    y = USCLN(a, b);
    int result;
    result = x / y;
    return result;
}

int main() {
    clock_t begin = clock();
    x=97;
    y=53;
    printf("USCLN cua %d va %d la: %d\n", x, y, USCLN(x, y));
    printf("BSCNN cua %d va %d la: %d", x, y, BSCNN(x, y));
    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}
