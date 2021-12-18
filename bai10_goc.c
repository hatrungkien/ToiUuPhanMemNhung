#include<stdio.h>
#include "math.h"
#include "time.h"


int fibonacci(int n) {
    if (n < 0) {
        return -1;
    } else if (n==0)
        return n;
    else if (n==1)
        return n;
//        if (n == 0 || n == 1) {
//        return n;
//    }
    else {
        double x = n - 1;
        double y = n - 2;
        return fibonacci(x) + fibonacci(y);
    }
}

int isPrimeNumber(int n) {
    int i;
    if (n < 2) {
        return 0;
    }

    for (i = 2; i <= sqrt(n); i++) {
        if (n % i == 0) {
            return 0;
        }
    }
    return 1;
}

void writeData(int a) {
    printf("%d ", a);
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
            writeData(fi);
        }
        i++;
    }

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}

