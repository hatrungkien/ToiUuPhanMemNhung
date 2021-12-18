#include<stdio.h>
#include "time.h"

int isThuanNghich(int n) {
    int ten;
    int dem;
    dem = 0;
    int a[20];
    ten = 10;
    int i;
    do {
        a[dem++] = (n % ten);
        n = n / ten;
    } while (n > 0);
    for (i = 0; i < (dem/2); i++) {
        int c = dem - i;
        int v = c - 1;
        if (a[i] != a[v]) {
            return 0;
        }
    }
    return 1;
}

void writeData(int y) {
    printf("%d\n", y);
}

int main() {
    clock_t begin = clock();

    int count = 0, i;
    for (i = 100000; i < 1000000; i++) {
        if (isThuanNghich(i)) {
            writeData(i);
            count++;
        }
    }
    printf("Tong cac so thuan nghich co 6 chu so la: %d", count);

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}

