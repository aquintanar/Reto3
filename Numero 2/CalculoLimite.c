#include <stdio.h>
#include <stdlib.h>
double funcionC(int N){
    double division;
    double acumulador=1;
    division = (double)1/N;

    for(int i=0;i<N;i++){
        acumulador=(1+division)*acumulador;
    }

    return acumulador;
}
extern double funcionasm(int N);

int main (){
    int N;
    double valor_c,valor_asm;
    printf("Ingrese un numero n\n");
    scanf("%d",&N);

    valor_c=funcionC(N);
    valor_asm=funcionasm(N);
    printf("El valor en C es %.2lf\n",valor_c);
    printf("EL valor en asm es %.2lf\n",valor_asm);

    return 0;
}