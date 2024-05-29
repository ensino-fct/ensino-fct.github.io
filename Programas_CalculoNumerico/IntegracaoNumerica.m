%Integracao Numerica

x=[0; 0.2; 0.4; 0.6; 0.8; 1.0; 1.2];
f=[1; 1.197; 1.374; 1.503; 1.552; 1.468; 1.202];

n = length(x);
valor=0.0;

if mod(n-1, 2) == 0
        Metodo=2;%1/3 simpson
        y=zeros(3,1);
        g=zeros(3,1);
        m = (n-1)/2;
   else
        Metodo=1;%Trapezio
        y=zeros(2,1);
        g=zeros(2,1);
end

switch(Metodo)

case 1
  
  %For dos intervalos
  for i=1:n-1  
  
    y(1)=x(i);
    y(2) = x(i+1);
  
    g(1) = f(i);
    g(2) = f(i+1);
  
    valor = valor + Trapezio(y, g);
  
  endfor


case 2
  i=1;
  
  while i<=(2*m-1)
  
  y(1) = x(i);
  y(2) = x(i+1);
  y(3) = x(i+2);
  
  g(1) = f(i);
  g(2) = f(i+1);
  g(3) = f(i+2);
  
  valor = valor + OneThirdSimpson(y, g);
  i=i+2;
    
  endwhile
  

endswitch

  fprintf('Integral=%f\n', valor);