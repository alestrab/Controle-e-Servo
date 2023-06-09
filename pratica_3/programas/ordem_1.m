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
tf_2=tf(K,[L*J,(R*J)+(L*b),b*R+K^2],'InputDelay',1.0);
tf_1=tf(b,[L,R],'InputDelay',1.0);
[y_2,t_2]=step(tf_2,t_f);
[y_1,t_1]=step(tf_1,t_f);
plot(t_1,y_1,'r-',t_2,y_2,'b-','LineWidth',2)
legend('Primeira Ordem','Segunda Ordem')
ylabel('Velocidade [rad/s]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;
