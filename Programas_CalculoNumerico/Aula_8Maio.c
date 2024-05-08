#include<stdio.h>
#include<stdlib.h>

#include "InterpolacaoLagrange.h"

int main(){

	double *x, *y, c, valor;
	int n;

	n=2;

	x = (double *)malloc(sizeof(double)*(n+1));
	y = (double *)malloc(sizeof(double)*(n+1));


	x[0] = 0.2;
	x[1] = 0.3;
	x[2] = 0.4;
	//____
	y[0] = 0.3644;
	y[1] = 0.7379;
	y[2] = 1.3280;
	//___
	c = 0.25;

	valor = InterpolacaoLagrange(c, x, y, n);

	printf("valor = %f\n", valor);

	free(x);
	free(y);


	return 0;
}
