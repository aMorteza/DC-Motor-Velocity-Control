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
k = -100;

figure;
rlocus(H * k)
title("Root locus of open loop");

figure;
% to check reponse stablity
sys_cl = feedback(k * H, 1);
step(sys_cl);
title("Step Response of closed loop with k = -1")

figure;
rlocus(sys_cl)
title("Root locus of closed loop")