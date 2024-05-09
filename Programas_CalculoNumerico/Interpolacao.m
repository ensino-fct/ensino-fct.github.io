function valor = Interpolacao(x,y,c)
  n = length(x);
  D = zeros(n,1);
  p=1.0;
  S = 0.0;
  for k=1:n

    p = p*(c - x(k));

    D(k) = 1.0;
    for j=1:n
      if k != j
       D(k) = D(k)*(x(k) - x(j));
      else
       D(k) = D(k)*(c - x(k));
      endif
    endfor

      S = S + (y(k)/D(k))
  endfor

  valor = p*S
  %return  valor

  endfunction
