a = input('Entre com o valor incial de x:');
b = input ('Entre com o valor final de x:');

if (a >=b)
    display('O valor inicial de deve ser menor que o final');
elseif(n<=0)
    display('O n�mero de pontos deve ser positivo');
else
n = input ('Entre com o n�mero de pontos do gr�fico:');    
x= linspace(a,b,n);
y = x.^2;
z = x.^3;
plot(x,y,'k-*',x,z,'k-.o');
title('Gr�fico de Fun��es no Matlab');
grid on;
legend('Fun��o Quadr�tica','Fun��o C�bica','Location','SouthWest');
text(0.7*b,(0.7*b)^2,'y=x^2');
text(0.7*b,(0.7*b)^3,'y=x^3');
display('Script criado por fragelli');
end