function [L,U]=DecomposicaoLU(A)
n=size(A,1);

%Inicialização
U=zeros(n,n);
L=zeros(n,n);


  for p=1:n

    %Linhas de U
    for k=p:n
      soma = 0.0;
      if (p != 1)

        for j=1:p-1
          soma = soma + L(p,j)*U(j,k);
        endfor
      endif
      U(p,k) = A(p,k) - soma;
    endfor

     if (p != n)
      %Colunas de L
      for q=p+1:n
        soma = 0.0;
        for i=1:p-1
          soma = soma + L(q,i)*U(i,p);
        endfor
        L(q,p) = (A(q,p) - soma)/U(p,p);
      endfor

     endif

      %Diagonal principal de L
      for (i=1:n)
        L(i,i) = 1.0;
      endfor


  endfor%for de p

  endfunction
