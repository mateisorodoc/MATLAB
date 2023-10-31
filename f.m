function [y] = f(x)
global typeex

switch typeex
    case 'ex1'
        y = sin(x) + 2.^(-x);
    case 'ex2'
        y = x.^3 - 2*x.^2 + 3*x - 4;
end