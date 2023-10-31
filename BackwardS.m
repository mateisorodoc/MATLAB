function [x] = BackwardS(U, b)

n = length(b);

x = zeros(1, n);

x(n) = b(n)/U(n,n);

for i = n-1:-1:1
    x(i) = (b(i) - sum(U(i, i+1:n).*x(i+1:n)))/U(i, i);

end

