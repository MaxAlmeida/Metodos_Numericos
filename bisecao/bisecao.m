%zeros de fun��es - M�todo da Bissec��o

a = input('Insira o primeiro valor: ');
b = input('Insira o segundo valor: ');

funcao = 'x^3-20';
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
    display('Este n�o � um intervalo de valores v�lidos pois f(a)*f(b) deve ser negativo');
end

                

                
                