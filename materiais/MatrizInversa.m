function [B] = MatrizInversa(A)
  n = length(A);
  I = eye(n,n);
  B = zeros(n,n);
  b = zeros(n,1);
  CopyA = A;

  for j=1:n
  A = CopyA;

    %Definindo o vetor b
    for i=1:n
      b(i) = I(i,j);
    endfor

    %Solucao do sistema linear
    [A,b] = EliminacaoGauss(A,b);
    x=SistemaTriangularSuperior(A, b);

    %Construir a inversa de A
    for i=1:n
      B(i,j) = x(i);
    endfor

  endfor

  end
