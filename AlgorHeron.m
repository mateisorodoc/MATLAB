function [rez, n] = AlgorHeron (x1, c, e)

xold = x1;
d = 1;
n = 0;

while d > e
    xnew = 0.5 * (xold + c/xold);
    d = abs (xnew-xold);
    n = n + 1;
    xold = xnew;

end

rez = xnew;