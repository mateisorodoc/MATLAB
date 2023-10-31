function y = f3
i = 0;
for t=-10:0.1:10
    i = i + 1

    if (t >= -10 && t<-4) || (t>=4 && t<=10)
        y(i) = sin(t);
    elseif t>=-4 && t<4
        y(i) = cos(5*t);
    end
end

plot(y)