function dxdt = f1(t, x)

m = 1;

dxdt = zeros(size(x));

dxdt(1) = x(2);
dxdt(2) = -x(1) + m*((1-x(1)^2)*x(2));