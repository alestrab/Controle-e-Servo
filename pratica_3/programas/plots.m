t=out.tout;
d_ft=out.simout(:,1);
d_int=out.simout(:,2);
i_ft=out.simout(:,3);
i_int=out.simout(:,4);
subplot(2,1,1)
plot(t,d_ft,'r-',t,i_ft,'b-','LineWidth',2)
title('Solução por Função de Transferência')
legend('Resposta ao Degrau','Resposta ao Impulso')
ylabel('Velocidade [rad/s]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;
subplot(2,1,2)
plot(t,d_int,'r-',t,i_int,'b-','LineWidth',2)
title('Solução por Blocos Integradores')
legend('Resposta ao Degrau','Resposta ao Impulso')
ylabel('Velocidade [rad/s]')
xlabel('Tempo [s]')
grid()
ax = gca;
ax.FontSize = 20;

