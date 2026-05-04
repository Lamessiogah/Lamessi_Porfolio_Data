close all; clear all;

%% Paramètres
t0 = 0;
T  = 100;
h  = 0.01;

Y0 = [1.5; 1.5; 1.5];

N = floor((T - t0)/h);
t = linspace(t0, T, N+1);

%% Simulation principale
Y = RK4(Y0, t, @lorenz);

%% Attracteur de Lorenz
figure
plot3(Y(1,:), Y(2,:), Y(3,:))
grid on
title("Attracteur de Lorenz")
xlabel("x"), ylabel("y"), zlabel("z")

%% Étude du chaos (2 conditions initiales)
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

%% Projection sur les coordonnées
figure
plot(t, Ya(1,:), 'r', t, Yb(1,:), 'k')
title("Coordonnée x")
legend("Ya", "Yb"), grid

figure
plot(t, Ya(2,:), 'r', t, Yb(2,:), 'k')
title("Coordonnée y")
legend("Ya", "Yb"), grid

figure
plot(t, Ya(3,:), 'r', t, Yb(3,:), 'k')
title("Coordonnée z")
legend("Ya", "Yb"), grid
