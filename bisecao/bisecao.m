%zeros de fun��es - M�todo da Bissec��o

a = input('Insira o primeiro valor: ');
b = input('Insira o segundo valor: ');

funcao = 'x^3-20';

if(a>b)
    aux = b;
    b = a;
    a = aux;
end

if(a==b)
    display('Os valores devem ser diferentes');
else
            x=a;
        f_a = eval(funcao);
            x=b;
        f_b = eval(funcao);
            resultado = f_a*f_b;
            
        if(resultado<0)
                display(' --');
                display(['Se ', funcao, ' for cont�nua em [',num2str(a),',',num2str(b),'],h� pelo menos uma raiz nesse intervalo.']);
                display('');
                
        else
            display(' --');
            display(['N�o h� como concluir se h� ra�zes de ',funcao,' entre ', num2str(a),' e ',num2str(b)]);
            display('');
        end
end
                
                
                