%Método 1/3 de simpson

funcao = '2x + 3';
x = 6;
y0 = eval(funcao);
x = 12;
y2 = eval(funcao);
n = input ('Insira uma quantidade de pontos');

    if( mod(n,2)~= 0)
        n = n+1;
    end
    h = (x2-x0)/n;
    x = x0 + h;
    
    SomaPares = 0;
    SomaImpares = 0;
    
    for i = 1: i < n-1: i+1
        fx = eval(funcao);
        
        if(i/2 == 0)    
            SomaPares = SomaPares + fx;
        else 
          SomaImpares = SomaImpares + f(x);
        
        end
        
        x = x + h;
        
    end
    
    Area = h/3*(y0 + y2 + 4*SomaImpares + 2*SomaPares)
    
    display(Area);
    
    
