%Parte 3.1 - Vetores e matrizes
%Vetores
x = [1 2 3 4 5];
y = x';
z = randi([0,100],1,5);
%Matrizes
A = randi([0,100],4,4);
B = A';
C = rand(4) + ones(4,4);
%Apresentacao dos resultados
disp('a)')
disp(x)
disp('b)')
disp(A)
disp('c)')
disp(y)
disp('d)')
disp(B)
disp('e)')
disp(z)
disp('f)')
disp(C)

%Parte 3.2 - Formatos de apresentação
for i=1:5
    switch i
        case 1
            %5 digitos
            format short
            disp("Formato: short")
        case 2
            %5 digitos com exponencial
            format shorte
            disp("Formato: shorte")
        case 3
            %15 digitos
            format long
            disp("Formato: long")
        case 4
            %15 digitos com exponencial
            format longe
            disp("Formato: longe")
        otherwise
            %Apresentacao racional
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
%Matriz transposta
E = D.';
%Matriz conjugada transposta
F = D';
%Apresentacao dos resultados
disp('a)')
disp(k)
disp('b)')
disp(D)
disp('c)')
disp(mod_k)
disp('d)')
disp(ang_k)
disp('e)')
disp(mod_D)
disp('f)')
disp(ang_D)
disp('g)')
disp(E)
disp('h)')
disp(F)

%Parte 3.4 - Operações com matrizes
format short

op_a = A+C;
disp('a)')
disp(op_a)

op_b = A-C;
disp('b)')
disp(op_b)

op_c = A*C;
disp('c)')
disp(op_c)

op_d = A.*C;
disp('d)')
disp(op_d)

op_e = A^-1;
disp('e)')
disp(op_e)

op_f = A\C;
disp('f)')
disp(op_f)

op_g = A/C;
disp('g)')
disp(op_g)

op_h = A./C;
disp('h)')
disp(op_h)

op_i = exp(x);
disp('i)')
disp(op_i)

op_j = exp(A);
disp('j)')
disp(op_j)

op_k = x.^4;
disp('k)')
disp(op_k)

op_l = A^2;
disp('l)')
disp(op_l)

%Parte 3.5 - Vetores com espaçamento controlado
t1 = linspace(0,10,11);
t2 = linspace(0,10,10/0.1+1);
t3 = linspace(-10,10,5);
t4 = linspace(50,0,50/10+1);
disp('t1')
disp(t1)
disp('t3')
disp(t3)

%Parte 3.6 - Manipulação de matrizes
A2 = A(3:4,1:2);
disp('A2')
disp(A2)
A3 = zeros(length(A)+1,length(A));
A3(1:4,1:4) = A;
A3(5,:) = x(1:4);
disp('A3')
disp(A3)

%Parte 3.7 - Funções

p1=funcTeste(t1);
p2=funcTeste(t2);

%Parte 3.8 - Gráficos

plot(t1,p1,'r*',t2,p2,'g-')
legend('p1 vs t1','p2 vs t2','Fontsize',20,'Location','northwest')
title('Gráfico Atividade 1')
xlabel('x','FontSize',20)
ylabel('funcTeste(x)','FontSize',20)
ax = gca;
ax.FontSize = 15;
grid on

