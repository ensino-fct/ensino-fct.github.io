clc;
clear;
%A=[2,1,3; 0, 1, -1; 0, 0, 2];
%b = [11;1;4];
%x =SistemaTriangularSuperior(A, b);

%A = [3,0,0;1,2,0; 2,-4,1];
%b = [9;5;7];
%x = SistemaTriangularInferior(A,b);

A = [5,2,1; 3,1,4; 1,1,3];
[L,U] = LUdecomposition(A);

n = length(A);
detA=1.0;
for i=1:n
  detA = detA*U(i,i);
endfor

detA
