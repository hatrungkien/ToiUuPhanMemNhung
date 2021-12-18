#include<stdio.h>
#include "time.h"


int fibonacci(int n) {
    int f0 = 0;
    int f1 = 1;
    int fn = 1;
    int i;

    if (n < 0) {
        return -1;
    } else if (n == 0 || n == 1) {
        return n;
    } else {
        for (i = 2; i < n; i++) {
            f0 = f1;
            f1 = fn;
            fn = f0 + f1;
        }
    }
    return fn;
}

int main() {
    clock_t begin = clock();

    int i;
    printf("30 so dau tien cua day so Fibonacci: \n");
    for (i = 0; i < 30; i++) {
        printf("%d ", fibonacci(i));
    }

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}
//space op
//Data Initialization at Declaration
//Data range op
//Custom op