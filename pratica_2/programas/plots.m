for i=1:4
    switch i
        case 1
            titulo = 'Solução Numérica';
            color = 'r-';
            x=solv_ode.x;
            y=solv_ode.y;
        case 2
            titulo = 'Solução Func. Trasnf.';
            color = 'b-';
            s=0:0.01:10;
            [y,x] = step(solv_tf,10);
        case 3
            titulo = 'Solução Integrador Simulink';
            color = 'g-';
            x=out.tout;
            y=out.din(:,1);
        otherwise
            titulo = 'Solução Func. Transf. Simulink';
            color = 'y-';
            x=out.tout;
            y=out.din(:,2);
    end
subplot(2,2,i)
plot(x,y,color,'LineWidth',2)
title(titulo)
ylabel('Velocidade [m/s]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;
end
