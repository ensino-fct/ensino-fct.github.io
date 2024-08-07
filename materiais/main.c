#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include "EliminacaoGauss.h"

int main(){

	double **A, *b, *x;
	int n, i, value;

	//Parametros:
	n=3;

	A = (double **)malloc(sizeof(double *)*n);
	for (i=0; i<n; i++){
		A[i] = (double *)malloc(sizeof(double)*n);	
	}
	b = (double *)malloc(sizeof(double)*n);
	x = (double *)malloc(sizeof(double)*n);

	//____________sol x=[1,1,1]_____
	A[0][0] = 6.0;
       	A[0][1] = 2.0;
	A[0][2] = -1.0;

	A[1][0] = 2.0;
	A[1][1] = 4.0;
	A[1][2] = 1.0;

	A[2][0] = 3.0;
	A[2][1] = 2.0;
	A[2][2] = 8.0;

	b[0] = 7.0;
	b[1] = 7.0;
	b[2] = 13.0;

	//______necessario a permutacao______
	A[0][0] = 3.0;
       	A[0][1] = 3.0;
	A[0][2] = 1.0;

	A[1][0] = 2.0;
	A[1][1] = 2.0;
	A[1][2] = -1.0;

	A[2][0] = 1.0;
	A[2][1] = -1.0;
	A[2][2] = 5.0;

	b[0] = 7.0;
	b[1] = 3.0;
	b[2] = 5.0;


	for (i=0; i<n; i++){
		x[i] = 0.0;
	}

	value=EliminacaoGauss(A, b, x, n);

	for (i=0; i<n; i++){
		printf("x=%f\n", x[i]);
	}

	for (i=0; i<n; i++){
		free(A[i]);
	}

	free(b);
	free(x);
	free(A);

	//b=NULL;
	//x=NULL;
	//A=NULL;

	return (0);
}
