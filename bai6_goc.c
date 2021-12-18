#include <stdio.h>
#include "time.h"
int x;
int i;
void phanTichThuaSoNguyenTo(int n){

    i = 2;
    while (n > 1){
        x = n % i;
        if (x == 0){
            printf("%d ",i);
            n = n / i;
        }
        else{
            i++;
        }
    }
}
int main(){
    int n;
    n=999999990;

    clock_t begin = clock();

    printf("%d = ",n);
    phanTichThuaSoNguyenTo(n);

    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nExe time: %f\n", time_spent);
    return 0;
}