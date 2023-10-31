function y = factorial(n)
prod = 1;
for i=1:n
    prod = prod * i;
    y(i) = prod;
end

plot(y)