%r1 = 0.1(exercise9_r1.m)
clc,clear,clf,shg

ts=0:0.1:120;
x0=[10 10];
r1=0.1; r2=1; n1=100; n2=100; s1=0.5; s2=2;
opt1=odeset('RelTol',1e-6,'AbsTol',1e-9);
[t,x]=ode45(@jingzheng,ts,x0,opt1,r1,r2,n1,n2,s1,s2);

%output t,x(t),y(t) and draw x(t),y(t)
[t,x]
plot(t,x),grid,gtext('x(t)','FontSize',16),
gtext('y(t)','FontSize',16),pause

%draw y(x)
plot(x(:,1),x(:,2),'r*'),grid
xlabel('x','FontSize',16),ylabel('y','FontSize',16)