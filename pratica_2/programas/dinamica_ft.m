%Parametros do sistema
m=1000;
b=50;
u=500;
%Funcao de transferencia
solv_tf = tf(u,[m,b]);