function y  = troca_linha(x, a, b )

[l,c] = size(x);

for i = 1:l
    
    if(i~=a && i~=b)
        
        y(i, 1:c) = x(i, 1:c);
        
    end
end

    y(b, 1:c) = x(a, 1:c);
    y(a, 1:c) = x(b, 1:c);
end