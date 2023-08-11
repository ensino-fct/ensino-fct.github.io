clc;
clear;

A=[5.0,2.0,1.0; 3.0,1.0,4.0; 1.0,1.0,3.0];

[L,U] = DecomposicaoLU(A);






A = [3.0, 0, 0; 1.0, 2.0, 0.0; 2.0, -4.0, 1.0];
b = [9.0; 5.0; 7.0];

x = SistemaTriangularInferior(A,b);
x
