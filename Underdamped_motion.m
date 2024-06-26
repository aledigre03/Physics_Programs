%Problem 15

B=0.1;
d= pi;
A=1;
w= 1;
tmin=0;
tmax=50;
nt=201;
t=linspace(tmin, tmax, nt);

x= A*exp(-B.*t).*cos(w.*t-d);

dx= -A.*exp(-B.*t).*(B.*cos(w.*t-d) + w.*sin(w.*t-d));

theta = w.*t;
rho = sqrt((x.^2)+(dx.^2));

figure;
plot(t, x, 'b-', 'DisplayName', 'Position')
hold on;

plot(t, dx, 'k-', 'DisplayName', 'Velocity')
hold on;

xlabel ("time");
ylabel ("Position, Velocity");
title("Underdamped motion");
legend('show');
hold off;

figure;
polar (theta, rho);
title ("polar plot");

%Answer to question:
%The system crosses x=0 14 times. I counted the times by modifyng my time
%interval and plotting a raw 0.01 line. I used the the graph similar to 3-10c.
%Due to Octave not being able to zoom in and out as I want I had to use that
%method. However, amplitude represents the circle in the polar graph.
%One can count the times that the function crosses the x axis while zooming
%in until it reaches the circle labeled 0.01. With my method, I had to plot a
%line and zoom at different rates. The polar graph is better if one can zoom in
%and out as much as needed.

