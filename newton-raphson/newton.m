%Metodo ponto fixo%

funcao = 'x^3 - 9*x+3 ';
valorinicial = input('Digite um valor inicial: ');
a = valorinicial;
dx = 0.00001
x = a-dx
fa = eval(funcao)
x = a+dx
fb = eval(funcao)
derivada = (fb-fa)/dx
x = a;
f_x0 = eval(funcao);
x1 = (x-(f_x0/derivada));
display([num2str(x1)]);
iteracoes = 1;
precisao = 0.00001;


while ( (x1 ~= x) &&( iteracoes <= 10) )
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