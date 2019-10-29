function v = bisection(f,a,b);
  pkg load symbolic;
  f = inline(f);
  i = 1e-9;
  while b-a >= i
    m = (a+b)/2;
    if f(a)*f(m) < 0
      b = m;
    else
      a = m;
    endif
    printf("%d %d %d %d %d %d\n",a,b,f(a),f(b),m,f(m));
  endwhile
  v = m;
  endfunction
