function Rungekutta(f, x0, y0, final, h)
  f=inline(f);
  while x0<final
    k1 = h*f(x0, y0);
    k2 = h*f(x0+h, y0+k1);
    y0 = y0+0.5*(k1+k2);
    x0=x0+h;
    printf("%d %d\n",x0,y0);
  endwhile
endfunction
