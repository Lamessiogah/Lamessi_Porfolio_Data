function Yp = lorenz(t, Y)

  sigma = 10;
  rho   = 28;
  beta  = 8/3;

  Yp = zeros(size(Y));

  Yp(1) = sigma * (Y(2) - Y(1));
  Yp(2) = Y(1)*(rho - Y(3)) - Y(2);
  Yp(3) = Y(1)*Y(2) - beta*Y(3);

endfunction
