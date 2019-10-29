a = [4,1,2,-1;3,6,-1,2;2,-1,5,-3;4,1,-3,-8];
b = [2;-1;3;2];
n = length(b);
x = zeros(n,1);
tx = zeros(n,1);
t = 0.0000001;
for it = 1 : 100
  convergence = true;
  for e = 1 : n
    sum = 0;
    for s = 1 : n
      if s != e
        sum += a(e,s)*x(s);
      endif
    endfor
    tx(e) = (b(e)-sum)/a(e,e);
    if abs(tx(e) - x(e)) > t
      convergence = false;
    endif
    printf("%.5f ",x(e));
  endfor
  printf("\n");
  if convergence
    break
  endif
  x = tx;
endfor
