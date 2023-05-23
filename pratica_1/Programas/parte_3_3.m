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


