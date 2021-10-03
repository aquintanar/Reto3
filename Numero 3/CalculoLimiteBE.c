#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double funcionC(int N ){
    double resultado;
    resultado=(double)1/N;
    resultado = resultado+1;
    double res=1;
    int residuo=N/2;
    for(int i=0;i<residuo;i++)
        res=res*resultado;
    if(N%2!=0)
        return resultado*res*res;

    return res*res;
}
extern double funcionasm(int N);

int main (){
    int N;
    double valor_c;
    double valor_asm;
    printf("Ingrese el valor de n\n");
    scanf("%d",&N);

    valor_c=funcionC(N);
    valor_asm=funcionasm(N);


    printf("El valor C es %.2lf\n",valor_c);
    printf("El valor asm es %.2lf\n",valor_asm);
    return 0;
}