clear
close all
clc

s = tf('s');
 
J = 0.01;
b = 0.1;
R = 1;
L = 0.5;
K = 0.01;

H = K/ ((J*s + b)*(L*s + R) + K^2);
Kp = 100;
Ki = 200;
Kd = 10;
C = pid(Kp, Ki, Kd);
figure;
margin(C * H);

figure;
sys_cl = feedback(C*H, 1);

step(sys_cl);
title("Step Response with PID Controller")


X = nyquistplot(sys_cl);