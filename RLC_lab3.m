clear
syms i R L V
t = [0:0.0001:0.5];

XC = 0.6283
XL = 0.0965

intensity_overall = simplify(dsolve('Di + (R/1.8802)*i - V/1.8802 = 0', 'i(0) = 0'));

intensity_overall = subs(intensity_overall, {R, V}, {100, 3.3});

IC = (XL/(XC + XL))*intensity_overall;
IL = (XC/(XC + XL))*intensity_overall;

dIL = diff(IL);

%UC = UL
UC = dIL * 0.033;

figure name 'Intensity on C'
ezplot(IC, t); grid

figure name 'Voltage on C'
ezplot(UC, t); grid

