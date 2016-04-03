function y=iter(x,r,c,u,d)
y=x+r*((c-atan(u*x))/d - x);