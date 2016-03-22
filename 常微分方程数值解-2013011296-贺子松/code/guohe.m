%create the function for guohe
%let x(1)=x, x(2)=y

function dx=guohe(t,x,v1,v2)
s=sqrt(x(1)^2+x(2)^2);
dx=[-v2*x(1)/s;v1-v2*x(2)/s];