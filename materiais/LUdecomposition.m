function [L,U]=LUdecomposition(A)

  n = length(A);
  L = eye(n,n);
  U = zeros(n,n);
  for i=1:n
    for j=1:n

      if (i<=j)%Calculo de U

        if i==1
          U(i,j) = A(i,j);
        else
          somatorio=0.0;
          for k=1:i-1
            somatorio = somatorio + L(i,k)*U(k,j);
          endfor
          U(i,j) = A(i,j) - somatorio;
        endif

      else%Calculo de L

        if j==1
          L(i,j) = A(i,j)/U(j,j);
        else
          somatorio=0.0;
          for k=1:j-1
            somatorio = somatorio + L(i,k)*U(k,j);
          endfor
          L(i,j) = (A(i,j) - somatorio)/U(j,j);
        endif

      endif



    endfor
  endfor

  endfunction
