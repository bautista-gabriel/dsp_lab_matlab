N = 4; 
c = 3e8; 
f = 1e9; 
lambda = c/f; 
d = lambda/2; 

thetam = 30 * pi/180; 
theta = linspace(-pi/2, pi/2, 1024);


wts = exp(-1j * 2 * pi * (d/lambda) * sin(thetam) * (0:N-1));


p1 = exp(1j * 2 * pi * (d/lambda) * (0:N-1)' * sin(theta));
z1 = wts * p1;

figure(1)
plot(theta*180/pi, abs(z1), 'r', 'LineWidth', 1.5)
grid on; xlabel('Angle (deg)'); ylabel('Magnitude');

figure(2)
polarplot(theta, abs(z1), 'r')