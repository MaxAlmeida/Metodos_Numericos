%Metodo ponto fixo%

funcao = 'sqrt(x) - x/3 + 1/9';
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