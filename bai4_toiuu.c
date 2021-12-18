#include<stdio.h>
#include<math.h>
#include "time.h"

int isPrimeNumber(int n) {
    if (n < 2) {
        return 0;
    }
    int i, k= sqrt(n);
    for (i = 2; i <= k; i++) {
        int x = n % i;
        if (x == 0) {
            return 0;
        }
    }
    return 1;
}

int main() {
    int n;
    n=20;

    clock_t begin = clock();

    printf("%d so nguyen to dau tien la: \n", n);
    int dem = 0;
    int i = 2;
    while (dem < n) {
        if (isPrimeNumber(i)) {
            printf("%d ", i);
            dem++;
        }
        i++;
    }

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;}
//space op
//maximum value op
//Data Initialization at Declaration
//Data Arrangement
//loop condition op