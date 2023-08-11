function x=SistemaTriangularInferior(A,b)

n=length(A);
%x(1) = b(1)/A(1,1);

  for i=1:n
    soma=0.0;
    if (i != 1)
      for k=1:i-1
        soma = soma + A(i,k)*x(k);
      endfor
    endif
    x(i)=(b(i) - soma)/A(i,i);
  endfor

  endfunction
