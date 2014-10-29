f='x^3'

g = strrep(f,'x','(1/2*(a+b+t*(b-a)))')



a = 0
b = 2

g = strrep(g,'a',num2str(a))
g = strrep(g,'b',num2str(b))

g = inline(g)

Integral = 1*g(-0.57735027) + 1*g(0.57735027)
