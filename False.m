function v = false(f,a,b);
pkg load symbolic;
syms x;
f = inline(f);
i = 1e-9;
for i=0:20
  c = (a* f(b) - b * f(a))/(f(b) - f(a));
  printf("%.8f %.8f %.8f %.8f %.8f %.8f\n",a,b,f(a),f(b),c,f(c));
  if f(a)*f(c) < 0
    b = c;
  else
    a = c;
  endif;
endfor
v = c;
endfunction
