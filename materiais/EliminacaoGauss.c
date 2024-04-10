#include "EliminacaoGauss.h"

int EliminacaoGauss(double **A, double *b, double *x, int n){

	int p, i, j, k;
	double soma, aux;

	printf("\n Eliminacao de Gauss\n \n");
	printf("\nb[2] = %f\n\n", b[2]);



	for (p=0; p<n-1; p++){

		
		//Pivotamento parcial:
		for (i=p+1; i<n; i++){
			if (fabs(A[i][p]) > fabs(A[p][p])){
				//Trocar linhas:
				for (j=p; j<n; j++){
					aux = A[p][j];
					A[p][j] = A[i][j];
					A[i][j] = aux;
				}
				//Trocar valores de b:
				aux = b[p];
				b[p] = b[i];
				b[i] = aux;
			}

		}
		

		for (i=p+1; i<n; i++){
			aux = A[i][p];
			b[i] = b[i] - b[p]*( aux/A[p][p] );
			for (j=p; j<n; j++){
				A[i][j] = A[i][j] - A[p][j]*( aux/A[p][p] );
			}
		}
	}

	x[n-1] = b[n-1]/A[n-1][n-1];
	for (i=2; i<=n; i++){
		soma=0.0;
		for (k=(n-i)+1; k<n; k++){
			soma += A[n-i][k]*x[k];
		}
		x[n-i] = (b[n-i] - soma)/A[n-i][n-i];
	}

	return (0);

}
