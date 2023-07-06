clear
clc


%Parametros do motor
J = 0.01;
b = 0.1; 
K = 0.01;
R = 1; 
L = 0.5;

Kp=1;
%Função de transferencia
num=Kp*K;
den = [L*J,(R*J)+(L*b),b*R+K^2,Kp*K];
sim('C:\Users\Alexandre\Documents\GitHub\Controle e Servo\pratica_4\simulink_malha.slx')
t1 = ans.tout;
y1 = ans.simout;
subplot(2,3,1)
plot(t1,y1)
title('Kp=1')
ylabel('Posição Angular [rad/s]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;


Kp=10;
%Função de transferencia
num=Kp*K;
den = [L*J,(R*J)+(L*b),b*R+K^2,Kp*K];
sim('C:\Users\Alexandre\Documents\GitHub\Controle e Servo\pratica_4\simulink_malha.slx')
t2 = ans.tout;
y2 = ans.simout;
subplot(2,3,2)
plot(t2,y2)
title('Kp=10')
ylabel('Posição Angular [rad/s]')
ylim([-15 15]) 
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;



Kp=100;
%Função de transferencia
num=Kp*K;
den = [L*J,(R*J)+(L*b),b*R+K^2,Kp*K];
sim('C:\Users\Alexandre\Documents\GitHub\Controle e Servo\pratica_4\simulink_malha.slx')
t3 = ans.tout;
y3 = ans.simout;
subplot(2,3,3)
plot(t3,y3)
title('Kp=100')
ylabel('Posição Angular [rad/s]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;


Kp=120.12;
%Função de transferencia
num=Kp*K;
den = [L*J,(R*J)+(L*b),b*R+K^2,Kp*K];
sim('C:\Users\Alexandre\Documents\GitHub\Controle e Servo\pratica_4\simulink_malha.slx')
t4 = ans.tout;
y4 = ans.simout;
subplot(2,3,4)
plot(t4,y4)
title('Kp=112.12')
ylabel('Posição Angular [rad/s]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;


Kp=150;
%Função de transferencia
num=Kp*K;
den = [L*J,(R*J)+(L*b),b*R+K^2,Kp*K];
sim('C:\Users\Alexandre\Documents\GitHub\Controle e Servo\pratica_4\simulink_malha.slx')
t5 = ans.tout;
y5 = ans.simout;
subplot(2,3,5)
plot(t5,y5)
title('Kp=150')
ylabel('Posição Angular [rad/s]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;


