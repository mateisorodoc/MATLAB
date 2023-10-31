function [rez, n] = SecantM(x1, x2, e)

xnew = x2 - f(x2)*(x2 - x1) / (f(x2) - f(x1));

d = abs(xnew - x2);

n = 1; x1 = x2; x2 = xnew;

while (d > e) && (n <= 100)
    xnew = x2 - f(x2)*(x2 - x1) / (f(x2) - f(x1));
    d = abs(xnew - x2);
    n = n+1;
    x1 = x2;
    x2 = xnew;
end

rez = xnew;
