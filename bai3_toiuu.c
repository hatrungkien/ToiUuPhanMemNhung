#include <stdio.h>
#include "math.h"
#include "time.h"

int isPrimeNumber(int n) {
    if (n < 2) {
        return 0;
    }
    int k= sqrt(n);
    for (int i = 2; i <= k; i++) {
        int x = n % i;
        if (x == 0) {
            return 0;
        }
    }
    return 1;
}

int main() {
    int i, n;
    n=100;
    clock_t begin = clock();
    printf("Tat ca cac so nguyen to nho hon %d la: \n", n);
    if (n >= 2) {
        printf("%d ", 2);
    }
    for (i = 3; i < n; i+=2) {
        if (isPrimeNumber(i) == 1) {
            printf("%d ", i);
        }
    }
    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}
//space op
//maximum value op
//Data Initialization at Declaration
//Data Arrangement
//loop condition op
