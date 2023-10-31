[t, x] = ode45(@f1, [0 20], [0.5 -0.5])

plot(t, x); grid
figure
plot(x(:, 1), x(:, 2)); grid

