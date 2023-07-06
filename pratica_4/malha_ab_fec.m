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
num=Kp*K;
den = [L*J,(R*J)+(L*b),b*R+K^2,0];
%Funcao de transferencia do sistema de malha aberta
tf_open=tf(num,den,'InputDelay',1.0);
%Realimentacao para gerar a funcao de malha fechada
tf_closed=feedback(tf_open,1);

%Apresentacao dos resultados
%Resposta ao degrau unitario
subplot(2,2,1)
[y_open,t_op] = step(tf_open,t_f);
[y_closed,t_cl] = step(tf_closed,t_f);
plot(t_op,y_open,'r-',t_cl,y_closed,'b-','LineWidth',2)
legend('Malha Aberta','Malha Fechada','Location','northwest')
title('Resposta ao degrau unitário')
ylabel('Posição [rad]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;


%Resposta degrau amplitude 2
subplot(2,2,2)
[y_open,t_op] = step(2*tf_open,t_f);
[y_closed,t_cl] = step(2*tf_closed,t_f);
plot(t_op,y_open,'r-',t_cl,y_closed,'b-','LineWidth',2)
legend('Malha Aberta','Malha Fechada','Location','northwest')
title('Resposta ao degrau com amplitude 2')
ylabel('Posição [rad]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;

%Reposta degrau unitario com Kp=10
subplot(2,2,3)
Kp=10;
num=Kp*K;
den = [L*J,(R*J)+(L*b),b*R+K^2,0];
tf_open=tf(num,den,'InputDelay',1.0);
tf_closed=feedback(tf_open,1);
[y_open,t_op] = step(tf_open,t_f);
[y_closed,t_cl] = step(tf_closed,t_f);
plot(t_op,y_open,'r-',t_cl,y_closed,'b-','LineWidth',2)
legend('Malha Aberta','Malha Fechada','Location','northwest')
title('Resposta ao degrau unitário com Kp=10')
ylabel('Posição [rad]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;