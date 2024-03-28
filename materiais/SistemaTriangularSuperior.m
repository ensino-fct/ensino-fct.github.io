function x=SistemaTriangularSuperior(A, b)


  n = length(A);
  x = zeros(n,1);
  x(n) = b(n)/A(n,n);

    for k=1:n-1
      somatorio=0.0;
        for i=(n-k)+1:n
          somatorio = somatorio + A(n-k, i)*x(i);
        endfor
        x(n-k) = (b(n-k) - somatorio)/A(n-k,n-k);
    endfor


  endfunction
