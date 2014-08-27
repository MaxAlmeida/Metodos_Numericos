%Método falsa posição

a = input('Insira o primeiro valor');
b = input('Insira o segundo valor');

funcao = 'x^3 - 20';
erro = 0.01;

if ( a > b)
    aux = b;
    b = a;
    a = aux;
end

    iteracao = 1
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
    eixo_y(iteracao)=c;
    eixo_x(iteracao)=iteracao;
    display(['Iteração: ','', num2str(iteracao) ,'',' raiz: ','', num2str(c), '', ' Erro: ','', char(177),'',num2str(b-a)]);
    
     iteracao = iteracao +1;
    
    
end
plot(eixo_x,eixo_y);

display(['raiz:', num2str(c), '',char(177),'',num2str(b-a)]); 