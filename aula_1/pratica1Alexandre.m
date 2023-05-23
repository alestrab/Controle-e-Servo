%Parte 3.1 - Vetores e matrizes
       
%Vetores
x = [1 2 3 4 5];
y = x';
z = randi([0,100],5,1);
%Matrizes
A = randi([0,100],4,4);
B = A';
C = rand(4) + ones(4,4);

%Parte 3.2 - Formatos de apresentação
%show="False";
show="True";
if show == "True"
    for i=1:5
        switch i
            case 1
                format short
                disp("Formato: short")
            case 2
                format shorte
                disp("Formato: shorte")
            case 3
                format long
                disp("Formato: long")
            case 4
                format longe
                disp("Formato: longe")
            otherwise
                format rat
                disp("Formato: rat")
        end
        disp("x")
        disp(x)
        disp("A")
        disp(A)
        disp("z")
        disp(z)
        disp("C")
        disp(C)
        disp("------------------")
    end
end

%Parte 3.3 - Números complexos

k = [3+5i, 2-10j];
D = [3 + 5i, 2-10i; 7-13i, 1.7-4i];
%Vetor módulo de k
mod_k = abs(k);
%Vetor fase de k, representado em radianos
ang_k = angle(k);
%Matriz do módulo de D
mod_D = abs(D);
%Matriz da fase de D, representado em radianos
ang_D = angle(D);

E = D.';
F = D';

%Parte 3.4 - Operações com matrizes
format short

op_a = A+C;
op_b = A-C;
op_c = A*C;
op_d = A.*C;
op_e = A^-1;
op_f = A\C;
op_g = A/C;
op_h = A./C;
op_i = exp(x);
op_j = exp(A);
op_k = x.^4;
op_l = A^2;

%Parte 3.5 - Vetores com espaçamento controlado
t1 = linspace(0,10,11);
t2 = linspace(0,10,10/0.1+1);
t3 = linspace(-10,10,5);
t4 = linspace(50,0,50/10+1);

%Parte 3.6 - Manipulação de matrizes

A2 = A(3:4,1:2);
A3 = zeros(length(A)+1,length(A));
A3(1:4,1:4) = A;
A3(5,:) = x(1:4);

%Parte 3.7 - Funções

p1=funcTeste(t1);
p2=funcTeste(t2);

%Parte 3.8 - Gráficos

plot(t1,p1,'r*',t2,p2,'g-')
legend('p1 vs t1','p2 vs t2','Fontsize',20,'Location','northwest')
title('Gráfico Atividade 1')
xlabel('x')
ylabel('funcTeste(x)')
