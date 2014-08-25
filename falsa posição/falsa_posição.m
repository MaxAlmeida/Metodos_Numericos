%Método falsa posição

a = input('Insira o primeiro valor');
b = input('Insira o segundo valor');

funcao = x^3 -9*x + 3;
erro = 0.0005;

if ( a > b)
    aux = b;
    b = a;
    a = aux;
end

while ( (b-a) > erro)
    x = a;
    f_a = eval(funcao);
    
    x = b;
    f_b = eval(funcao);
    
    c = (a*f_b - b*f_a)/(f_b - f_a);
    
    f_c = eval(funcao);
    
    if ( (f_a*f_c) > 0)
        a = c;
    else
       b = c;
     
    end
    
    
    
end

display(['raiz:', num2str(c), '',char(177),'',num2str(erro)]); 