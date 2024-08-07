function [G] = Cholesky(A)
  n = length(A);
  G=zeros(n,n);

  %Primeira coluna de G:
  G(1,1)=sqrt(A(1,1));
  for i=2:n
    G(i,1) = A(i,1)/G(1,1)
  endfor

  %A partir da coluna 2 de G
  for j=2:n
    for i=j:n
      %Diagonal principal__
      if i==j
        soma=0.0;
        for k=1:i-1
          soma = soma + G(i,k)*G(i,k);
        endfor
       G(i,j) = sqrt(A(i,j) - soma);
      else

        %Off diagonal___
        soma=0.0;
        for k=1:j-1
          soma = soma + G(i,k)*G(j,k);
        endfor
        G(i,j) = (A(i,j) - soma)/G(j,j);

      endif

    endfor
  endfor

  endfunction
