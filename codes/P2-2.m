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

for w = -5 : 1 : 5
  y = H * w/(s^2 + w^2)
  bode(y)
  grid on;
end
%   [Gm, Pm, wgc, wpc] = margin(y)
%   Gm_db = 20log10(Gm)


  
