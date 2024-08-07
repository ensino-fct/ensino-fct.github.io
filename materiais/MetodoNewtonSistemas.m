x0=1.2;
y0=1.2;

tol=1.0e-03;
ex=2*tol;
ey=2*tol;

while (ex>tol || ey>tol)
  f = x0*x0 + y0*y0 - 2;
  g = x0*x0 - y0*y0 - 1;
  f_x = 2*x0;
  f_y = 2*y0;
  g_x = 2*x0;
  g_y = -2*y0;
  Dx = -f*g_y + g*f_y;
  Dy = -g*f_x + f*g_x;
  detA = f_x*g_y - f_y*g_x;

  x1 = x0 + Dx/detA;
  y1 = y0 + Dy/detA;

  ex = abs(x1 - x0)/abs(x1);
  ey = abs(y1 - y0)/abs(y1);

  x0 = x1;
  y0 = y1;

end
fprintf("%f \t %f\n", x1, y1);
