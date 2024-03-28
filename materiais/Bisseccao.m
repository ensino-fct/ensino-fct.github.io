a=0;
b=1;
MaxIter=10;
iter=1;
while (iter <= MaxIter)
  x = 0.5*(a + b);
  fa = a*a*a + 3*a - 1;
  fb = b*b*b + 3*b - 1;
  fx = x*x*x + 3*x - 1;

  if fx * fa < 0
    b = x;
    fb = b*b*b + 3*b - 1;
  else
    a = x;
    fa = a*a*a + 3*a - 1;
  end

  iter = iter + 1;
  endwhile

  fprintf("x=%f\n", x);
