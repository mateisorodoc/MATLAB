syms i R L V

t = [0:0.0001:0.003];

I = simplify(dsolve('Di + (R/L)*i - V/L = 0', 'i(0) = 0'));

intensity = subs(I, {R, V, L}, {100, +3.3, 0.033});

di = diff(intensity)

voltage = di * 0.033

figure Name 'Intensity'
ezplot(intensity, t)

figure Name 'Voltage'
ezplot(voltage, t)