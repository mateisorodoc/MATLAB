[t,x] = ode45(@f2, [0 100], [0 0]);
figure, plot(t, -x(:,1)); % time evolution of the displacement (platform taken as reference point)
figure, plot(-x(:,1), x(:,2)) % phase-plane trajectory describing the motion of the bungee jumper
