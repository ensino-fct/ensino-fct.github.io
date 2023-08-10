%Sistema triangular superior
%dimensao:
function x=SistemaTriangularSuperior(A, b)
  n=size(A,1);

  x(n) = b(n)/A(n,n);

  for i=1:(n-1)
    sum=0;
    for (k=(n-i)+1:n)
      sum = sum + x(k)*A(n-i,k);
    end
    x(n-i) = (b(n-i) - sum)/A(n-i,n-i)
  end

endfunction

