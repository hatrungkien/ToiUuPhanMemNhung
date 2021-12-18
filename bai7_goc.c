#include<stdio.h>
#include "time.h"

const int DEC_10 = 10;
int n;
double total;

double totalDigitsOfNumber(int n) {
    total = 0;
    do {
        total = total + n % DEC_10;
        n = n / DEC_10;
    } while (n > 0);
    return total;
}

int main() {

    n = 1234567899;
    clock_t begin = clock();

    printf("Tong cac chu so cua %d la: %f", n, totalDigitsOfNumber(n));

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}

