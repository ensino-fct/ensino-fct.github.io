xOld=1;
iter=1;
tol=1.0e-02;
error = tol*10;
iterMax=100;

while (error > tol && iter < iterMax)
  fx = 4*cos(xOld) - exp(xOld);
  dfx = -4.0*sin(xOld) - exp(xOld);
  xNew = xOld - (fx/dfx);
  error = abs(xNew - xOld)/abs(xNew);
  iter=iter+1;
endwhile

fprintf("%f\n", xNew);
