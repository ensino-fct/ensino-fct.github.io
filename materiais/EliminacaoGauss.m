function [A,b] = EliminacaoGauss(A,b)
  n = length(A);

 for k=1:n-1

    %Pivotamento___
    for i=k+1:n
      if (abs(A(i,k)) > abs(A(k,k)))
        for j=k:n
          aux = A(k,j);
          A(k,j) = A(i,j);
          A(i,j) = aux;
        endfor
          aux = b(k);
          b(k) = b(i);
          b(i) = aux;
      endif
    endfor
  %_----------------------

    for i=k+1:n
      aux = A(i,k);
      b(i) = b(i) - aux*b(k)/A(k,k);
      for j=k:n
        A(i,j) = A(i,j) - aux*A(k,j)/A(k,k);
      endfor
    endfor
  endfor


  end
