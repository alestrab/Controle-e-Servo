clear
clc


%Parametros do motor
J = 0.01;
b = 0.1; 
K = 0.01;
R = 1; 
L = 0.5;

for i=1:6
    switch i
        case 1
            Kp=1;
            tit='Kp=1';
        case 2
            Kp=10;
            tit='Kp=10';
        case 3
            Kp=100;
            tit='Kp=100';
        case 4
            Kp=120.12;
            tit='Kp=120.12';
        case 5
            Kp=150;
            tit='Kp=150';
        otherwise
            Kp=200;
            tit='Kp=200';
    end
    num=Kp*K;
    den = [L*J,(R*J)+(L*b),b*R+K^2,Kp*K];
    sim('C:\Users\Alexandre\Documents\GitHub\Controle e Servo\pratica_4\simulink_malha.slx')
    t = ans.tout;
    y = ans.simout;
    disp(i)
    subplot(2,3,i)
    plot(t,y,'LineWidth',2)
    title(tit)
    ylabel('Posição Angular [rad]')
    xlabel('Tempo [s]')
    grid()
    ax = gca;
    ax.FontSize = 20;

end


