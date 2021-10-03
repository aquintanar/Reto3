double c_LimTrad(int N){
    double division;
    double acumulador=1;
    division = (double)1/N;

    for(int i=0;i<N;i++){
        acumulador=(1+division)*acumulador;
    }

    return acumulador;
}
