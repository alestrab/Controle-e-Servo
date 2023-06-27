clear
clc

%Parametros simulacao
t_i=0;
t_f=10;

%Parametros do motor
J = 0.01;
b = 0.1; 
K = 0.01;
R = 1; 
L = 0.5;

%Função de transferencia
tf=tf(K,[L*J,(R*J)+(L*b),b*R+K^2],'InputDelay',1.0);
[z, p, k] = tf2zp(K,[L*J,(R*J)+(L*b),b*R+K^2]);
H = zp2tf(z,p,k);
