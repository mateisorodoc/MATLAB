clc
clear

global typeex

typeex = 'ex1/';
[a, b] = IntLimit;

e = 10^(-16); x1 = a; x2 = b;

[rez, n]  = NewtonM(x1, e);
fprintf('NEWTON: Aprox is %.10f in %d steps\n', rez, n);

[rez, n] = SecantM(x1, x2, e);
fprintf('SECANT: Aprox is %.10f in %d steps\n', rez, n);

