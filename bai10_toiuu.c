#include<stdio.h>
#include "math.h"
#include "time.h"


int fibonacci(int n) {
    if (n < 0) {
        return -1;
    } else if (n == 0 || n == 1) {
        return n;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

int isPrimeNumber(int n) {
    if (n < 2) {
        return 0;
    }
    int squareRoot = sqrt(n);
    for (int i = 2; i <= squareRoot; i++) {
        if (n % i == 0) {
            return 0;
        }
    }
    return 1;
}

int main() {
    clock_t begin = clock();

    int n;
    n=9999990;
    printf("Cac so fibonacci nho hon %d va la so nguyen to: ", n);
    int i = 0;
    while (fibonacci(i) < n) {
        int fi = fibonacci(i);
        if (isPrimeNumber(fi)) {
            printf("%d ", fi);
        }
        i++;
    }

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}

