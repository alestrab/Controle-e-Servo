m=1000;
b=50;
u=500;
t = linspace(0,10,10000);
v0=0;
x0=0;
options = odeset('RelTol',1e-5,'Stats','on','OutputFcn',@odeplot);
solv=ode45(@(t,v) dvdt(t,v,u,b,m) ,t,v0,options);

function dydt = dvdt(t,v,u,b,m)
    dydt= (u-b*v)/m;
end

