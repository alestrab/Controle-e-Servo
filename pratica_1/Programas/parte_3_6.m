A2 = A(3:4,1:2);
disp('A2')
disp(A2)
A3 = zeros(length(A)+1,length(A));
A3(1:4,1:4) = A;
A3(5,:) = x(1:4);
disp('A3')
disp(A3)