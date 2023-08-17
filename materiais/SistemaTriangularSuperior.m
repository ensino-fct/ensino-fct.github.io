function x=SistemaTriangularSuperior(A,b)

n=size(A,1);%Dimensao da matrix

x(n) = b(n)/A(n,n);%Primeiro valor

  for i=1:n-1
    soma=0.0;

      for k=(n-i+1):n
        soma = soma + A(n-i,k)*x(k);
      endfor

    x(n-i)=(b(n-i) - soma)/A(n-i,n-i);
  endfor

  endfunction
