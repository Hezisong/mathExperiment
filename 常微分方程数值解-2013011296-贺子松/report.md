实验4 常微分方程数值解

5. (yuantong.m, exericse5.m)
	(1)记与海底距离为s，速度为v，重力为G，浮力为F，阻力为f。根据条件得到如下方程：
		
	v' = (G-F-f)/m;
	s' = -v;
	f = k*v;
	s(0) = 300; v(0) = 0;
	
	(2)解析解如下：
		
	v = (G-F)*(1-e^(-k*t/m))/k;
	s = 300 + (G-F)*(m*(1-e^(-k*t/m))-k*t)/(k^2);
	
	当v=40时，s= -26721 < 0;故圆桶速度不会超过40ft/s,原子能委员会赢了这场官司。
	
	数值解法:
	函数在yuantong.m中，主程序在exercise5.m中
	
	x(1)=s, x(2)=v, t[0,25]
	
	主程序中画了两张图，第一张是x(t),y(t)的图像，可以看出x(t)(即s)随着t逐渐减小,物理意义是圆桶距离海底越来越近；y(t)(即v)随着t逐渐增大，物理意义是圆桶速度逐渐增大。
	
	![](http://i.imgur.com/57uoWO9.png)
	
	第二张图是y(x)的图像，物理意义是随着与海底距离的减小，圆桶速度逐渐增大。
	![](http://i.imgur.com/TG5SPPm.png)

	从图中可以看出，当s趋近于0时，v大致在25附近，所以圆桶速度不会超过40，原子能委员会赢得了这场官司，与解析解的分析结果一致。
6. (guohe.m exercise6.m)
	
	(1)以B点为原点建立平面直角坐标系，沿v1方向为y轴，沿垂直v1方向为x轴，设小船的位置为(x,y),则有如下方程：
	
	x' = -v2*x/sqrt(x^2 + y^2);
	y' = v1 - v2*y/sqrt(x^2 + y^2);
	x(0) = -d; y(0) = 0;
	
	由于这个方程较为复杂，没有算出解析解
	
	(2)数值解
	函数在guohe.m中，主程序在exercise6.m中
	
	x(1)=x, x(2)=y, t[0,66.5]
	
	主程序中画了两张图，第一张是x(t),y(t)的图像，可以看出x(t)随着t的增大，从-d增加到0，物理意义是小船的横坐标从A到B；y(t)随着t的增大，先增大后减小，物理意义是小船在v1方向的位置先增大后减小。
	
	![](http://i.imgur.com/sSfPeK5.png)
	
	第二章图是y(x)的图像，物理意义是小船的航行曲线
	
	![](http://i.imgur.com/OaYHIq6.png)
 		
	从第一张图中可以看出渡船时间约为66.5秒
	
	(3)流速v1=0时，

	分析：小船沿直线从A到B，渡船时间应为d/v2=50s.
	数值解(exercise6_0.m)
	
	![](http://i.imgur.com/lBOQ3iA.png)
	
	从图中可以看出，渡船时间为50s，与分析一致。
	
	![](http://i.imgur.com/lNI9Pl5.png)
   	
	流速v1=0.5时，
	分析：小船在v1方向有偏移，但比第一问要小，渡河时间比第一问要少
	数值解(exercise6_1.m)
	
	![](http://i.imgur.com/z3za16i.png)
	
	从图中可以看出，渡船时间大约为53.3s,与分析一致
	
	![](http://i.imgur.com/XTbUlh0.png)
   
	流速v1=1.5时，
	分析：小船在v1方向的偏移比第一问大，渡河时间比第一问要多
	数值解(exercise6_2.m)
	
	![](http://i.imgur.com/wRh1AjW.png)
	
	如上图，可以看出，渡船时间大约为114s,与分析一致
	
	![](http://i.imgur.com/veWnoXg.png)

9. (jingzheng.m exercise9.m)
	(1)函数在jingzheng.m中，主程序在exercise9.m中
	
	x(1)=x, x(2)=y, t[0,16]
	
	主程序中画了两张图，第一张是x(t),y(t)的图像，可以看出x(t)随着t逐渐增加，最终稳定在100附近。物理意义是甲种群逐渐稳定在最大容量；y(t)随着t先增大后减小，最终趋近于0。物理意义是乙种群逐渐灭亡。
	
	![](http://i.imgur.com/IyOy80J.png)
	
	相图(x,y)如下图：
	
	![](http://i.imgur.com/iaOzGhm.png)
	
	由图像可知，时间t充分大以后，x(t)趋近于n1,y(t)趋近于0。
	(2)
	
	1. r1 = 0.1(exercise9_r1.m)
	
	![](http://i.imgur.com/u926EaA.png)
	
	由图像可知，时间t充分大后，x(t)趋近于n1，y(t)趋近于0。
	
	![](http://i.imgur.com/vHXyuog.png)
	
	2. r2 = 10(exercise9_r2.m)
	
	![](http://i.imgur.com/x2kKUJO.png)
	
	由图像可知，时间t充分大后，x(t)趋近于n1，y(t)趋近于0。
	
	![](http://i.imgur.com/Zua1wkr.png)
	
	3. n1 = 10(exercise9_n1.m)
	
	![](http://i.imgur.com/xFP1JLO.png)
	
	由图像可知，时间t充分大后，x(t)趋近于n1，y(t)趋近于0。
	
	![](http://i.imgur.com/XkcCyQd.png)
	
	4. n2 = 1000(exercise9_n2.m)
	
	![](http://i.imgur.com/fdXCEuJ.png)
	
	由图像可知，时间t充分大后，x(t)趋近于n1，y(t)趋近于0。
	
	![](http://i.imgur.com/Y564UUL.png)
	
	结论：
	在s1,s2不变的情况下，改变r1,r2,n1,n2,只对进化趋势的快慢有关系，但对进化的趋势没有影响。

	5. s1 = 1.5, s2 = 0.7(exercise9_s1_s2.m)
	
	![](http://i.imgur.com/MFUPTFx.png)
	
	由图像知，时间t充分大后，x(t)趋近于0，y(t)趋近于n2。
	
	![](http://i.imgur.com/Hcc247w.png)
	
	结论：
	s1,s2是决定种群进化趋势的关键因素.
	s1>1,s2<1或者 s1<1,s2>1的情况下，一个种群灭亡，一个种群存活。	
	分析：
	s1<1意味着在对供养甲的资源的竞争中，乙弱于甲；
	
	s2>1意味着在对供养乙的资源的竞争中，甲强于乙；
	
	于是乙终将灭绝，中群甲将趋近于最大容量n1.
	
	反之亦然。
	
	(3)
	1. s1 = 0.8, s2 = 0.7(exercise9_3_1.m)
	
	![](http://i.imgur.com/e4euwKc.png)
	
	由图可知，时间t充分大后，x(t),y(t)都稳定在各自的平衡值附近，都存活下来。且y(t) > x(t)。
	
	![](http://i.imgur.com/x2VPdZ1.png)
	
	2. s1 = 1.5, s2 = 1.7(exercise9_3_2.m)
	
	![](http://i.imgur.com/mzCssdD.png)
	
	由图可知，时间t充分大后，x(t)趋近于n1，y(t)趋近于0.
	
	![](http://i.imgur.com/FnLYjcZ.png)

	分析：
	s1<1意味着在对供养甲的资源的竞争中，乙弱于甲；
	
	s2<1意味着在对供养乙的资源的竞争中，甲弱于乙；
	
	故两个种群都可以在自己的资源中占据优势，都生存下来。
	
	s1>1意味着在对供养甲的资源的竞争中，乙强于甲；
	
	s2>1意味着在对供养乙的资源的竞争中，甲强于乙；
	
	故两个种群在自己的资源中都不占优势，且s2>s1,即甲竞争乙的资源的强度大于乙竞争甲的资源的强度，故最终甲存活，乙灭亡。
	