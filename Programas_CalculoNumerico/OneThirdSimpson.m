function valor=OneThirdSimpson(x,f)
  
  h=x(2)-x(1);
  
  valor=(h/3)*( f(1) + 4*f(2) + f(3) );
  
endfunction