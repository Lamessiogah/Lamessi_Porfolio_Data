close all; clear all;

Y0 = [1.5; 1.5; 1.5];
h = 0.01;
t0 = 0;
T = 100;

N = floor((T-t0)/h);
t = linspace(t0, T, N+1);

Y = RK4(Y0, t, @lorenz);

figure
plot3(Y(1,:), Y(2,:), Y(3,:))
grid on
title("Attracteur de Lorenz")

Ya0 = [1.5; 1.5; 1.5];
Yb0 = [1.6; 1.4; 1.6];

Ya = RK4(Ya0, t, @lorenz);
Yb = RK4(Yb0, t, @lorenz);

figure
plot3(Ya(1,:), Ya(2,:), Ya(3,:), 'r')
hold on
plot3(Yb(1,:), Yb(2,:), Yb(3,:), 'k')
legend("Ya", "Yb")
title("Sensibilité aux conditions initiales")
