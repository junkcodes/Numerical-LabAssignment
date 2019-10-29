a = [3,1,2,-1;3,6,-1,2;2,-1,5,-3;4,1,-3,-8];
b = [1;-1;2;2];
n = length(b);
x = zeros(n,1);
t = 0.000001;
for it = 1 : 100
  convergence = true;
  for e = 1 : n
    sum = 0;
    for s = 1 : n
      if s != e
        sum += a(e,s)*x(s);
      endif
    endfor
    if abs((b(e)-sum)/a(e,e) - x(e)) > t
      convergence = false;
    endif
    x(e) = (b(e)-sum)/a(e,e);
    printf("%.5f ",x(e));
  endfor
  printf("\n");
  if convergence
    break
  endif
endfor
