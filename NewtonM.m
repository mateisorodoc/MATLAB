function [rez, n] = NewtonM(x1, e)

xnew = x1 - f(x1)/fderiv(x1);

d = abs(xnew - x1);

x1 = xnew; n = 1;


while (d > e) && (n <= 100)
    xnew = x1 - f(x1)/fderiv(x1);
    d = abs(xnew - x1);
    n = n+1;
    x1 = xnew;
end

rez = xnew;
