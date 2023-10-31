% Script to check that i = (V/R) * (1 - exp(-R*t/L) is the solution to the equation di/dt + (R/L) * i - V/L = 0
% Step 1: Define the symbolic variables 
syms i V R L t
R = 100;
V = 3.3;
L = 33*10^(-3);
C = 2000*10^(-6);

% Step 2: Build the solution for i 
i=(V/R) * (1 - exp(-R*t/L));
% Step 3: Calculate the first derivative of i
didt = diff(i,t);
% Step 4: Sum the terms in the ODE
didt + (R/L) * i - V/L;
% Step 5: Is the answer ZERO?
simplify(ans)
% Step 6: What is the value of i at t= 0?
subs(i,t,0)