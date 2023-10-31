
syms i R L V
v = 3.3
t = [0:0.0001:0.1];

XC = 0.6283
XL = 0.0965

I_overall = simplify(dsolve('Di + R/1.8802*i - V/1.8802 = 0', 'i(0) = 0'));

intensity_overall = subs(I, {R, V}, {100, 3.3});

IC = (XL/(XC + XL))*intensity_overall;

dIC = diff(IC);

UC = dIC * (2*10^(-3));

figure name 'Intensity on C'
ezplot(IC, t); grid

figure name 'Voltage on C'
ezplot(UC, t); grid