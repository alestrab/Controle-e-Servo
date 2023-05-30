m=1000;
b=50;
u=500;
v0=0;
dt=0.01;
size=10/dt;
t = linspace(0,10,size);
v = zeros(1,size);
v(1)=v0;
for i=2:size
    v(i)=dvdt(dt,v(i-1),u,b,m);
end
plot(t,v)

function dydt = dvdt(dt,v,u,b,m)
    dydt= v+dt*(u-b*v)/m;
end