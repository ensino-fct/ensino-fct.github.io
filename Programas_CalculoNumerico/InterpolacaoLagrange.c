#include "InterpolacaoLagrange.h"

double InterpolacaoLagrange(double c, double *x, double *y, int n){

	double *D, pi, S;
	double prod, valor;
	int k, j;

	//memory allocation
	D = (double *)malloc(sizeof(double)*(n+1));
	//pi = (double *)malloc(sizeof(double)*(n+1));

	pi = 1.0;
	S = 0.0;
	for (k=0; k<=n; k++){
		pi = pi*(c - x[k]);
		printf("pi=%f\n", pi);

		prod=1.0;
		for (j=0; j<=n; j++){
			if (k==j){
				prod = prod*(c - x[k]);				

			}else{
				prod = prod*(x[k] - x[j]);
			}
		}
		D[k] = prod;
		printf("D[k]=%f\n", D[k]);

		S += y[k]/D[k];
	}

	valor = pi * S;
	

	//free memory
	free(D);
	//free(pi);


	return valor;

}
