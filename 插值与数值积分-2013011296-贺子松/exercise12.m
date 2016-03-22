clc; clear all;
%输入数据
x = [0 2 4 5 6 7 8 9 10.5 11.5 12.5 14 16 17 18 19 20 21 22 23 24];
y = [2 2 0 2 5 8 25 12 5 10 12 7 9 28 22 10 9 11 8 9 3];
%将时间划分为分钟
u = 0:1/60:24;

%在y方向产生拉格朗日插值
v1 = lagr(x, y, u);
%在y方向产生分段线性插值
v2 = interp1(x, y, u);
%在y方向产生三次样条插值
v3 = spline(x, y, u);

subplot(2,2,1), plot(x,y), axis([0 24 0 35]);
gtext('原轮廓线', 'FontSize', 12);
subplot(2,2,2), plot(u,v1);%axis([0 24 0 35]);
gtext('拉格朗日插值', 'FontSize', 12);
subplot(2,2,3), plot(u,v2), axis([0 24 0 35]);
gtext('分段线性插值', 'FontSize', 12);
subplot(2,2,4), plot(u,v3), axis([0 24 0 35]);
gtext('三次样条插值', 'FontSize', 12);

disp('分段线性插值得出的车流量：');
S0 = sum(v3)
disp('三次样条插值得出的车流量：');
S1 = sum(v2)