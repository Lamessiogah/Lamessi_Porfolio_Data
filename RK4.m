function v = RK4(v0, t, f)

  h = t(2) - t(1);
  n = length(t);

  v = zeros(length(v0), n); % préallocation
  v(:,1) = v0;

  for i = 1:n-1
    tn = t(i);
    vn = v(:,i);

    k1 = f(tn, vn);
    k2 = f(tn + h/2, vn + h*k1/2);
    k3 = f(tn + h/2, vn + h*k2/2);
    k4 = f(tn + h,   vn + h*k3);

    v(:,i+1) = vn + h*(k1 + 2*k2 + 2*k3 + k4)/6;
  end

endfunction
