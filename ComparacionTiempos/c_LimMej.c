double c_LimMej(int N ){
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

