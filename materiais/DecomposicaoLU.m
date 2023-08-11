function [L,U]=DecomposicaoLU(A)

  n=size(A,1);
  L=zeros(n,n);
  U=zeros(n,n);

  for p=1:n

    %Matriz U
    for j=p:n
      soma=0.0;
      if (p != 1)
        for k=1:p-1
          soma = soma + L(p,k)*U(k,j);
        end
      endif
      U(p,j)=A(p,j)-soma;
    endfor

    %Matriz L
    if (p != n)
      for i=p+1:n
        soma=0.0;
        for k=1:p-1
          soma = soma + L(i,k)*U(k,p);
        endfor
        L(i,p)=(A(i,p)-soma)/U(p,p);
      endfor
    endif
    L(p,p) = 1.0;
  endfor%indice p

  endfunction
