function Yp = lorenz(t,Y)
  a = 10; 
  b = 28; 
  c = 8/3;

  Yp = zeros(size(Y));
  Yp(1) = a*(Y(2)-Y(1));
  Yp(2) = Y(1)*(b-Y(3)) - Y(2);
  Yp(3) = Y(1)*Y(2) - c*Y(3);
endfunction
