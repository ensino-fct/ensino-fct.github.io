clc;
clear;

%Exemplo para testar a decomposicao LU
A=[5.0,2.0,1.0; 3.0,1.0,4.0; 1.0,1.0,3.0];
b = [0;-7;-5];
[L,U] = DecomposicaoLU(A);

%Calculo determinante de A
n=size(A,1);
detA=1;
for i=1:n
  detA = detA *U(i,i);
endfor
detA

y = SistemaTriangularInferior(L,b);
x = SistemaTriangularSuperior(U,y);
x

