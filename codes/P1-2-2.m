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
'''0.01/0.005s2+0.06s+0.1001'''
num = [0.01]
den = [0.005, 0.06, 0.1001]

n = 0:30;
x = (n==0)
y = filter(num, den, x)
stem(y)
grid on;