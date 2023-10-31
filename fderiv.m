function [y] = fderiv(x)

global typeex

switch typeex
    case 'ex1'
        y = cos(x) - log(2)*2.^(-x);
    case 'ex2'
        y = 3*x.^2 - 4*x + 3;

end
