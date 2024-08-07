xBarra = 2.0;
xOld = 2.2;
tol=1.0e-03;
error = 1.0;
IterMax = 10;
iter = 1;
while (error > tol && iter<IterMax)

  %xNew = xOld*xOld - 2.0;
  xNew = sqrt(xOld + 2);
  xNewNew = sqrt(xNew + 2);
  error = abs(xNew - xOld)/abs(xNew);

  %Calculo dos erros:
  eNewNew = abs(xNewNew - xBarra);
  eNew = abs(xNew - xBarra);
  eOld = abs(xOld - xBarra);

  %Calculo da ordem de convergencia:
  p = log(eNewNew/eNew)/log(eNew/eOld);
  fprintf("%f\n", p);

  xOld = xNew;
  xNew = xNewNew;
  iter = iter + 1;

endwhile

fprintf("%f\n", xNew);
