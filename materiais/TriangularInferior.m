function x=TriangularInferior(A,b)
  n=length(A);
  x(1) = b(1)/A(1,1);
  for i=2:n
    soma=0;
    for k=1:i-1
      soma=soma+A(i,k)*x(k);
    endfor
    x(i) = (b(i) - soma)/A(i,i);
  endfor

  endfunction
