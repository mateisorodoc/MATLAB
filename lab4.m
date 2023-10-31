[t,x] = ode45(@f1,[0 20],[0.5 -0.5]);
plot(t, x); grid % time evolution of the dependent variables 
figure, plot(x(:,1),x(:,2)); grid % evolution of the state trajectory