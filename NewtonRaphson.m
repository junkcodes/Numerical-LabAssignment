function v = newton(f,a);
pkg load symbolic;
syms x;
f = inline(f);
f1 = function_handle(diff(f(x)));
x0 = a; 
for i=0:100
  printf("x%d : %.8f\n",i,x0);
  x1=x0-(f(x0)/f1(x0));
  if x1 == x0
    break;
  endif;
  x0 = x1;
endfor
endfunction
