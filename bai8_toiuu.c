#include<stdio.h>
#include "time.h"

const int DEC_10 = 10;

int isThuanNghich(int n) {
    int a[20];
    int dem = 0;
    do {
        a[dem++] = (n % DEC_10);
        n = n / DEC_10;
    } while (n > 0);
    int x=dem/2;
    for (int i = 0; i < x; i++) {
        if (a[i] != a[dem - i - 1]) {
            return 0;
        }
    }
    return 1;
}

int main() {
    clock_t begin = clock();

    int count = 0, i;
    for (i = 100000; i < 1000000; i++) {
        if (isThuanNghich(i)) {
            printf("%d\n", i);
            count++;
        }
    }
    printf("Tong cac so thuan nghich co 6 chu so la: %d", count);

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}
//space op
//time op
//Data Initialization at Declaration
//Data range op
//Custom op
