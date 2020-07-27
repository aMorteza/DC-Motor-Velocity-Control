clear
close all
clc
figure;
hold on;

s = tf('s');
 
J = 0.01;
b = 0.1;
R = 1;
L = 0.5;
K = 0.01;

H = K/ ((J*s + b)*(L*s + R) + K^2);

bode(H)
% X = nyquistplot(H)
margin(H)
grid on;
