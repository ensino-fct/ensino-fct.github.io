function [a] = MinimosQuadrados(x,y,m)

  n = length(x);

  switch m
  case 0

  case 1

  case 2%grau 2
    for i=1:n
      u0(i) = 1.0;
      u1(i) = x(i);
      u2(i) = x(i)*x(i);
    endfor
    A(1,1) = ProdutoEscalar(u0,u0);
    A(1,2) = ProdutoEscalar(u1,u0);
    A(1,3) = ProdutoEscalar(u2,u0);

    A(2,1) = A(1,2);
    A(2,2) = ProdutoEscalar(u1,u1);
    A(2,3) = ProdutoEscalar(u2,u1);

    A(3,1) = A(1,3);
    A(3,2) = A(2,3);
    A(3,3) = ProdutoEscalar(u2,u2);

    b(1) = ProdutoEscalar(y,u0);
    b(2) = ProdutoEscalar(y,u1);
    b(3) = ProdutoEscalar(y,u2);
  case 3

  for i=1:n
      u0(i) = 1.0;
      u1(i) = x(i);
      u2(i) = x(i)*x(i);
      u3(i) = x(i)*x(i)*x(i);
    endfor
    A(1,1) = ProdutoEscalar(u0,u0);
    A(1,2) = ProdutoEscalar(u1,u0);
    A(1,3) = ProdutoEscalar(u2,u0);
    A(1,4) = ProdutoEscalar(u3,u0);

    A(2,1) = A(1,2);
    A(2,2) = ProdutoEscalar(u1,u1);
    A(2,3) = ProdutoEscalar(u2,u1);
    A(2,4) = ProdutoEscalar(u3,u1);

    A(3,1) = A(1,3);
    A(3,2) = A(2,3);
    A(3,3) = ProdutoEscalar(u2,u2);
    A(3,4) = ProdutoEscalar(u3,u2);

    A(4,1) = A(1,4);
    A(4,2) = A(2,4);
    A(4,3) = A(3,4);
    A(4,4) = ProdutoEscalar(u3,u3);

    b(1) = ProdutoEscalar(y,u0);
    b(2) = ProdutoEscalar(y,u1);
    b(3) = ProdutoEscalar(y,u2);
    b(4) = ProdutoEscalar(y,u2);

  endswitch

  [A,b] = EliminacaoGauss(A,b);
  a=SistemaTriangularSuperior(A, b)

  endfunction
