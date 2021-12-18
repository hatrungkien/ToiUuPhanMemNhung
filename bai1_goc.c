#include <stdio.h>
#include "time.h"
int giaiThua(int n)
{
//    int giai_thua = 1;
    int giai_thua;
    giai_thua = 1;
    int i;
    i = 1;
    for (i ; i <= n; i++)
        giai_thua *= i;
    return giai_thua;
}

int main()
{
    clock_t begin = clock();
    int input;
    input = 10;
    double result = giaiThua(input);
    printf("Giai thua 10 la: %f", result);
    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}
