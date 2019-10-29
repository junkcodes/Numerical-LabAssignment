dy = @(x,y)x*y;
x0 = 0;
xn = 2;
y = 0;    
h = 0.01;

fprintf ('x  \t\t y (Euler)\n')
fprintf ('%f \t %f\n',x0,y);

for x = x0 : h : xn-h
   x = x + h;
   y = y + dy(x,y)*h;
  fprintf ('%f \t %f\n',x,y);
end
