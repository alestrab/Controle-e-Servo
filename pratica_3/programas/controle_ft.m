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

%Apresentacao dos resultados
%Resposta ao degrau
[y_d,t] = step(tf,t_f);
%Resposta ao impulso
[y_i,t] = impulse(tf,t_f);
%Resposta ao seno
y_s = lsim(tf,sin(t),t);
subplot(2,2,1)
plot(t,y_d,'LineWidth',2)
ylabel('Velocidade [rad/s]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;

subplot(2,2,2)
plot(t,y_i,'LineWidth',2)
ylabel('Velocidade [rad/s]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;

subplot(2,2,3)
plot(t,y_s,'LineWidth',2)
ylabel('Velocidade [rad/s]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;


