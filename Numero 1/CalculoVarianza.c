#include <stdio.h>
#include <stdlib.h>
#include <math.h>
extern double calcular_varianzaASM(double*arreglo,int N);
double calcular_varianzaC(double*arreglo,int N){
    double media=0;
    double acumulador=0;
    for(int i=0;i<N;i++){
        media+=arreglo[i];
    }
    media=media/N;


    for(int i=0;i<N;i++){
        acumulador+=(arreglo[i]-media)*(arreglo[i]-media);
    }
    acumulador=acumulador/N;
    return acumulador;
}


int main (){
    int N;
    double valor;
    double varianza_C;
    double varianza_asm;
    printf("Ingrese el tamanio del arreglo\n");
    scanf("%d",&N);
    double arreglo[N];
    for(int i=0;i<N;i++){
        printf("Ingrese el valor %d\n",i+1);
        scanf("%lf",&valor);
        arreglo[i]=valor;
    }

    varianza_C=calcular_varianzaC(arreglo,N);
    varianza_asm = calcular_varianzaASM(arreglo,N);

    printf("El valor de la varianza_C es %.2lf\n",varianza_C);
    printf("El valor de la varianzaasm es %.2lf\n",varianza_asm);
}