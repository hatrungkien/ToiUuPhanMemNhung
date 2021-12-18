#include <stdio.h>
#include "time.h"

int main()
{
    clock_t begin = clock();
    int result = 1; //maximum value op , Data Initialization at Declaration
    for (int i = 1; i <= 10; i++) //Data Arrangement
        result *= i;
    printf("Giai thua 10 la: %d", result);
    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}
//space op
//maximum value op
//Data Initialization at Declaration
//Data Arrangement