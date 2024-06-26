%a rock is dropped from a height of 3 m
%-----------------------------------------------------------------
clear all;
x0= 3;
v0=0
g= -9.8;
tmin=0;
tmax= sqrt((x0*2)/abs(g));
vmax= g*tmax
nt= 101;
t = linspace(tmin, tmax, nt)

printf("the time is %f\n", tmax);
for i = 1:length(t)
v(i) = v0 + g*t(i);
endfor

for i = 1:length(t)
x(i) = 0.5*g*t(i)^2;
endfor

figure 1;

plot(t, v);
xlabel("time (s)");
ylabel("velocity (m/s)");
title("Velocity vs. time for rock falling");


figure 2;
plot(t, x)
xlabel("time (s)");
ylabel("position (m)");
title("Position vs. time for VW Beetle");
for i = 1:length(t)
x(i) = 0.5*g*t(i)^2;
endfor



