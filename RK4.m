function [v] = RK4(v0,t,f)
 v = [ v0 ];
 h = t(2)-t(1);
 for tn = t(1:(end-1))
  vn = v( :, end);
  k1 = f(tn,vn);
  k2 = f(tn + h/2, vn + h*k1/2);
  k3 = f(tn + h/2, vn + h*k2/2);
  k4 = f(tn + h  , vn + h*k3);
  v = [ v , vn+h*(k1+2*k2+2*k3+k4)/6 ];
 end
endfunction
