function [] = find_zero_function(function_input_user,user_method_choice)
fixed_point = 1;
newton_raphson = 2;
sec_method = 3;
false_position = 4
bisection = 5;
        %here the method is selected according to user´s choice
    switch user_method_choice
        
        case fixed_point
            fixed_point_function(function_input_user);
            
        case newton_raphson
             newton_raphson_function(function_input_user);
             
        case sec_method 
            sec_method_function(function_input_user);
            
        case false_position
            false_position_function(function_input_user);
            
        case bisection    
            bisection_function(function_input_user)
    

    end
    
    
    
end

function[] = fixed_point_function(function_input_user)


a = input('Insira o primeiro valor');
b = input('Insira o segundo valor');

funcao = function_input_user;
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


end

function[] = newton_raphson_function(function_input_user)


%Metodo ponto fixo%

funcao = function_input_user;
valorinicial = input('Digite um valor inicial: ');
a = valorinicial;
dx = 0.0001
x = a-dx;
fa = eval(funcao)
x = a +dx
fb = eval(funcao);
derivada = (fb-fa)/dx;
x = a;
f_x0 = eval(funcao);
x1 = x - (f_x0/derivada);

iteracoes = 1;
precisao = 0.00001;


while ( (x1 ~= x)&&((x1-x)>precisao) )
     display([num2str(f_x)]);
    
     a = x1;
     dx = 0.0001
	 x = a-dx;
     fa = eval(funcao)
     x = a +dx
     fb = eval(funcao);
     derivada = (fb-fa)/dx;
     x = a;
     f_x0 = eval(funcao);
     x1 = x - (f_x0/derivada);
   
   
   
   
   f_x = eval(funcao_iterativa);
   eixo_x(iteracoes) = iteracoes;
   eixo_y(iteracoes) = x;
      
   
iteracoes = iteracoes +1;

end

plot(eixo_x,eixo_y);
end

function[] = sec_method_function(function_input_user)
    %Metodo ponto fixo%

funcao = function_input_user;
x0 = input('Digite o primeiro chute: ');
x1 = input('Digite o segundo chute: ');
x = x0;
f_x0= eval(funcao);
x = x1;
f_x1 = eval(funcao);


iteracoes = 1;
precisao = 0.00001;


while ( (x1 ~= x) )
     display([num2str(x1)]);
    
     a = x1;
     dx = 0.01;
	 x = a-dx;
     fa = eval(funcao);
     x = a+dx;
     fb = eval(funcao);
     derivada = (fb-fa)/dx;
     x = a;
     f_x0 = eval(funcao);
     x1 = x-(f_x0/derivada);
   
   eixo_x(iteracoes) = iteracoes;
   eixo_y(iteracoes) = x;
      
   
iteracoes = iteracoes +1;

end

plot(eixo_x,eixo_y);

end

function [] = false_position_function(function_input_user)

%Método falsa posição

a = input('Insira o primeiro valor');
b = input('Insira o segundo valor');

funcao = function_input_user;
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


end

function [] = bisection_function(function_input_user)


a = input('Insira o primeiro valor: ');
b = input('Insira o segundo valor: ');

funcao = function_input_user;
erro_final = 0.01;
if(a>b)
    aux = b;
    b = a;
    a = aux;
end

if(a==b)
    display('Os valores devem ser diferentes');
end
            x=a;
        f_a = eval(funcao);
            x=b;
        f_b = eval(funcao);
            resultado = f_a*f_b;
            
        if(resultado<0)
            c=(a+b)/2;
            erro= (b-a)/2;
      iterator = 1; 
   while(erro>erro_final)
       x = c;
       f_c = eval(funcao);
       if(f_a*f_c<0)
            b = c;
       else
            a = c;
       end
            c = (a+b)/2;
            erro = (b-a)/2;
            eixo_x(iterator) = iterator;
            eixo_y(iterator)= c;
            iterator = iterator +1;
   end
        plot(eixo_x,eixo_y);
        display(['raiz:', num2str(c),'',char(177),'',num2str(erro)]);
    else
    display('Este não é um intervalo de valores válidos pois f(a)*f(b) deve ser negativo');
end                            

end
