%Metodo das secantes
x0 = 1.5;
x1 = 1.4;
tol=10^-6;
error = tol*10;
cont = 1;
iterMax=1000;
xbar = 1.431;

while (error > tol && cont<iterMax)
  f0=sqrt(x0) -5*e^(-x0);
  f1=sqrt(x1) -5*e^(-x1);

  x2 = (x0*f1 - x1*f0)/(f1 - f0);
  f2=sqrt(x2) -5*e^(-x2);

  error = abs(x2-x1)/abs(x2);

  e0 = abs(x1-x0)/abs(x1);
  e1 = abs(x2-x1)/abs(x2);


  %Update
  if (f2*f1<0)
    x0=x1;
    x1=x2;
        else
        x0=x0;
        x1=x2;
  endif

  cont=cont+1;
endwhile

%p = log(e2/e1)/log(e1/e0);
fprintf("x2=%f\n", x2);
fprintf("cont=%d\n",cont);
