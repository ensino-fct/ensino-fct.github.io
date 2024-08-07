function valor=ProdutoEscalar(u,v)

n = length(u);
valor = 0.0;
for i=1:n
  valor = valor + u(i)*v(i);
endfor

endfunction
