#include<stdio.h>
#include "math.h"
#include "time.h"

int isPrimeNumber(int n) {
    if (n < 2) {
        return 0;
    }
    int i, k = sqrt(n);
    for (i = 2; i <= k; i++) {
        int x = n % i;
        if (x == 0) {
            return 0;
        }
    }
    return 1;
}

int main() {
    clock_t begin = clock();

    int count = 0;
    int i;
    printf("Liet ke tat ca cac so co 5 chu so:");
    for (i = 10001; i < 99999; i+=2) {
        if (isPrimeNumber(i)) {
            printf("%d\n", i);
            count++;
        }
    }
    printf("Tong cac so nguyen to co 5 chu so la: %d", count);

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}
//Space optimize
//Time optimize
//Data Initialization at Declaration
//Data Arrangement
//Loop condition optimize
