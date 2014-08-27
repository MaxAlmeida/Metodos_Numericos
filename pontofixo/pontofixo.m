%Metodo ponto fixo%

funcao = 'sqrt(x) - x/3 + 1/9';
funcao_iterativa = '3*sqrt(x) + 1/3';
valorinicial = input('Digite um valor inicial: ');
iteracoes = 1;
precisao = 0.000001;
x = valorinicial
f_x = eval(funcao_iterativa)
while ( (f_x ~= x)&&((f_x-x)>precisao) )
     display([num2str(f_x),' ',num2str(x)]);
   x = f_x;
   f_x = eval(funcao_iterativa);
   
      
   
iteracoes = iteracoes +1;

end
