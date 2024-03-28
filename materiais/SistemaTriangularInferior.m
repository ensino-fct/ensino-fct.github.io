function x=SistemaTriangularInferior(A, b)


  n = length(A);
  x = zeros(n,1);
  x(1) = b(1)/A(1,1);

    for k=2:n
      somatorio=0.0;
        for i=1:k-1
          somatorio = somatorio + A(k, i)*x(i);
        endfor
        x(k) = (b(k) - somatorio)/A(k,k);
    endfor


  endfunction
