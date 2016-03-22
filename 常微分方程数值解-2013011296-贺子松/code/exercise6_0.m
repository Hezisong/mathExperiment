clc,clear,clf,shg

ts=0:0.1:50;
n=length(ts);
x0=[-100 0];
v2=2;
opt1=odeset('RelTol',1e-6,'AbsTol',1e-9);

%v1=0
v1=0; 
[t,x]=ode45(@guohe,ts,x0,opt1,v1,v2);
%output t,x(t),y(t) and draw x(t),y(t)
[t,x]
plot(t,x),grid,gtext('x(t)','FontSize',16),
gtext('y(t)','FontSize',16),pause
%draw y(x): the position of the boat
plot(x(:,1),x(:,2),'r*'),grid
xlabel('x','FontSize',16),ylabel('y','FontSize',16)
