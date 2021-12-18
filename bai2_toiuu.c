#include<stdio.h>
#include "time.h"

int USCLN(int a, int b) {
    if (b == 0) return a;
    int x = a % b;
    return USCLN(b, x);
}
int main() {
    clock_t begin = clock();
    int a=97, b =53;
    printf("USCLN cua %d va %d la: %d\n", a, b, USCLN(a, b));
    printf("BSCNN cua %d va %d la: %d", a, b, a*b/USCLN(a,b));
    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}
//space op
//maximum value range op
//Data Initialization at Declaration
//Data Arrangement