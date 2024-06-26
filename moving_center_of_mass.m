%-------------------------------------------------------------------------------
% moving_center_of_mass.m
%
% This script plots the trajectories of two objects in projectile motion and
% their center of mass.
%-------------------------------------------------------------------------------
clear all

g = 9.8;   % Acceleration due to gravity in m/s^2

% Parameters for first object
m1 = 0.20;     % Mass in kg
v10 = 6.7;     % Initial speed in m/s
theta10 = 35;  % Angle of initial velocity in degrees

% Parameters for first object
m2 = 0.30;     % Mass in kg
v20 = 4.5;     % Initial speed in m/s
theta20 = 45;  % Angle of initial velocity in degrees

% Create a list of time values ranging from zero to the time when the first ball
% hits the ground.
tmin = 0;

tmax1 = 2*v10*sin(theta10*pi/180)/g;
tmax2 = 2*v20*sin(theta20*pi/180)/g;
tmax = min(tmax1,tmax2);

nt = 101;
t = linspace(tmin,tmax,nt);

% Create lists containing the x and y coordinates of each mass's position,
% and the coordinates of their center of mass.
for i = 1:nt
   x1(i) = v10*cos(theta10*pi/180)*t(i);
   y1(i) = v10*sin(theta10*pi/180)*t(i) - 0.5*g*t(i)^2;
   
   x2(i) = v20*cos(theta20*pi/180)*t(i);
   y2(i) = v20*sin(theta20*pi/180)*t(i) - 0.5*g*t(i)^2;
   
   xCM(i) = (m1*x1(i)+m2*x2(i)) / (m1+m2);
   yCM(i) = (m1*y1(i)+m2*y2(i)) / (m1+m2);
endfor

% Create plot
plot(x1,y1, x2,y2, xCM,yCM);
legend("Mass 1", "Mass 2", "CM")
xlabel("x (m)")
ylabel("y (m)")