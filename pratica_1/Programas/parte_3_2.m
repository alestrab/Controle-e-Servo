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