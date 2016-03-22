clc,clear,clf,shg

ts=0:0.1:25;
n=length(ts);
x0=[300 0];
G=527.436; F=470.327; k=0.08;
opt1=odeset('RelTol',1e-6,'AbsTol',1e-9);
[t,x]=ode45(@yuantong,ts,x0,opt1,G,F,k);

%output t,x(t),y(t) and draw x(t),y(t)
[t,x]
plot(t,x),grid,gtext('x(t)','FontSize',16),
gtext('y(t)','FontSize',16),pause

%draw y(x)
plot(x(:,1),x(:,2),'r*'),grid
xlabel('x','FontSize',16),ylabel('y','FontSize',16)
