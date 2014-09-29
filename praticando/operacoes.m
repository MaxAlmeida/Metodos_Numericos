function[soma, sub, prod, div] = operacoes(a, b)

soma = qual_soma(a,b);
sub = qual_sub(a,b);
prod = qual_muilt(a,b);
div = qual_div(a,b);
end

function resultado = qual_soma(a,b)

resultado = a+b;
end

function resultado = qual_sub(a,b)

resultado = a-b;
end

function resultado = qual_muilt(a,b)

resultado = a*b;

end

function resultado = qual_div(a,b)
resultado = a*b;

end