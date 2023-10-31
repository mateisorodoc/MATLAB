function x = sine_signal1

for i = 0:9999
    x(i+1) = sin(2*pi*i/20);
end