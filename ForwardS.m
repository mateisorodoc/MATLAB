function [x] = ForwardS(L, b)

n = length(b);

x = zeros(1, n);

x(1) = b(1)/L(1, 1);

for i = 2:n
    x(i) = (b(i) - sum(L(i, 1:i-1).*x(1:i-1)))/L(i, i);
% same as:
%     s = 0;
%     for j = 1:i-1
%         s=s+L(i, j)*x(j);
%     end
%     x(i) = (b(i) - s) / L(i, i);
% end
end

