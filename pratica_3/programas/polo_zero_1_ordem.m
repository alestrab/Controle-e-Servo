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
%pzmap(tf,'r','Linewidth',2)
pzplot(tf)
a = findobj(gca,'type','line');
for i = 1:length(a)
    set(a(i),'markersize',20); %change marker size
    set(a(i),'Color','r')
end
ax = gca;
ax.FontSize = 20;
xlabel('Eixo Real','FontSize',20)
ylabel('Eixo Imaginário','FontSize',20)
title('Plot polo-zero','FontSize',20)


