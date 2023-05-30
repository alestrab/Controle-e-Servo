m=1000;
b=50;
u=500;
v0=0;
solv_tf = tf(u,[m,b]);
stepplot(solv_tf)
xlim([0 120])