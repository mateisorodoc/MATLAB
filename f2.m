function y = f2
i = 0;
for t=0:01:10
i = i + 1;
y(i) = 0.5^(i);
end

plot(y)