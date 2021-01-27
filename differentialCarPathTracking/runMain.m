clear;
clc;

%%初始化
t2fisSim = readt2fis('differential_car.t2fis');   %读取二型模糊控制器文件数据
v_0 = 0.3;  %初速度
r = 7.3;  %轨迹半径
L = 1;  %前后激光测距传感器距离
x0 = 4; %初始小车坐标Px
y0 = 0; %初始小车坐标Py
theta0 = 0; %初始小车与横坐标夹角
K_omega = 0.000972; %角速度omega与转速增量的比值
Kp = 1; %PD控制器的比例系数 
Kd = 6; %PD控制器的微分系数

%%仿真
open_system('differential_car.slx');
sim('differential_car.slx');

%%作图
Py = Py.signals.values;
Px = Px.signals.values;
figure;
plot(Px,Py);
axis([-10,10,-10,10]);
title('path')
axis equal;

y = y_t.signals.values;
time = y_t.time;
figure;
plot(time,y);
title('y(t)');
