p1=funcTeste(t1);
p2=funcTeste(t2);
plot(t1,p1,'r*',t2,p2,'g-')
legend('p1 vs t1','p2 vs t2','Fontsize',20,'Location','northwest')
title('Gráfico Atividade 1')
xlabel('x','FontSize',20)
ylabel('funcTeste(x)','FontSize',20)
ax = gca;
ax.FontSize = 15;
grid on
