%Massa do veiculo
m=1000;
%Coeficiente de atrito
b=50;
%Forca externa
u=500;
t = linspace(0,10,10000);
%Condicao inicial 
v0=0;
%Opcoes para apresentacao dos resultados e parametros para a funcao ODE
options = odeset('RelTol',1e-5,'Stats','on','OutputFcn',@odeplot);
solv_ode =ode45(@(t,v) dvdt(t,v,u,b,m) ,t,v0,options);

function dydt = dvdt(t,v,u,b,m)
    dydt= (u-b*v)/m;
end
