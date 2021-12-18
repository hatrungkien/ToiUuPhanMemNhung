#include<stdio.h>
#include "time.h"

const int DEC_10 = 10;

int main() {
    int n = 1234567899;
    clock_t begin = clock();

    int total = 0;
    do {
        total = total + n % DEC_10;
        n = n / DEC_10;
    } while (n > 0);

    printf("Tong cac chu so cua %d la: %d", n, total);

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}
//space op
//time op
//Data Initialization at Declaration
//Data range op
