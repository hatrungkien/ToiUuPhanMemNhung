#include<stdio.h>
#include "time.h"
double f0;
int fibonacci(int n) {
    double f1;
    f0 = 0;
    double fn;
    f1 = 1;
    fn = 1;
    double i;

    if (n < 0) {
        return -1;
    } else
        if(n==0)
            return n;
        else if(n==1)
            return n;

//        if (n == 0 || n == 1) {
//            return n;
//        }
        else {
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