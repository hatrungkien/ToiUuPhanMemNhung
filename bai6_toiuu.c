#include <stdio.h>
#include "time.h"

int main(){
    int n=999999990;

    clock_t begin = clock();

    printf("%d = ",n);

    int i = 2;
    while (n > 1){
        double x = n % i;
        if (x == 0){
            printf("%d ",i);
            n = n / i;
        }
        else{
            i++;
        }
    }

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}
//space op
//time op
//Data Initialization at Declaration
//Data range op
//loop condition op
