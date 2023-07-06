clear
clc

%Parametros simulacao
t_i=0;
t_f=30;

%Parametros do motor
J = 0.01;
b = 0.1; 
K = 0.01;
R = 1; 
L = 0.5;
Kp=1;
%Função de transferencia
syms Kp EPS
num=Kp*K;
den_op = [L*J,(R*J)+(L*b),b*R+K^2,0];
den_cl = [L*J,(R*J)+(L*b),b*R+K^2,Kp*K];

ra_op=routh(den_op,EPS)
ra_cl=routh(den_cl,EPS)




