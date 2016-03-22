%create function for yuantong
%Let x(1) = s, x(2) = v

function dx=yuantong(t,x,G,F,k)
dx = [-x(2);(G-F-k*x(2))*9.8/G];