clear;
clc;

%%��ʼ��
t2fisSim = readt2fis('differential_car.t2fis');   %��ȡ����ģ���������ļ�����
v_0 = 0.3;  %���ٶ�
r = 7.3;  %�켣�뾶
L = 1;  %ǰ�󼤹��ഫ��������
x0 = 4; %��ʼС������Px
y0 = 0; %��ʼС������Py
theta0 = 0; %��ʼС���������н�
K_omega = 0.000972; %���ٶ�omega��ת�������ı�ֵ
Kp = 1; %PD�������ı���ϵ�� 
Kd = 6; %PD��������΢��ϵ��

%%����
open_system('differential_car.slx');
sim('differential_car.slx');

%%��ͼ
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
