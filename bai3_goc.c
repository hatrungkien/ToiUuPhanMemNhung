#include <stdio.h>
#include "math.h"
#include "time.h"

int isPrimeNumber(int n) {
    int i;
    if (n < 2) {
        return 0;
    }

    for (i = 2; i <= (int) sqrt(n); i++) {
        int x;
        x = n % i;
        if (x == 0) {
            return 0;
        }
    }
    return 1;
}

void writeData(int i, int n) {
    if (n >= 2) {
        printf("%d ", 2);
    }
    for (i = 3; i < n; i+=2) {
        if (isPrimeNumber(i) == 1) {
            printf("%d ", i);
        }
    }
}

int main() {
    clock_t begin = clock();
    int i, n;
    n=100;

    printf("Tat ca cac so nguyen to nho hon %d la: \n", n);
    writeData(i,n);

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;}
