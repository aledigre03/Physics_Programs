%Homework #8
clear variables
clear all
close all

xmin=-40;
xmax= 5;
nx=101;
nE= 6;
m=1;
x=linspace(xmin, xmax, nx);
labels = {};
% {} is a cell array in octave, it can hold different kinds of elements

U=((0.1).*x+x.^4).*(exp(x./4))

E = [100,500,1000,1500,2000,4000]


figure 1;

plot(x, U);
xlabel("x");
ylabel("U(x)");
set (gca, "xaxislocation", "origin");
set (gca, "yaxislocation", "origin");
title("Potential U(x)");


figure 2;
hold on;

for i = 1:nE
#Positive:
  dx = sqrt((2/m)*(E(i)-U));
#Negative:
  dxneg = -sqrt((2/m)*(E(i)-U));
  plot(x, dx)
  plot(x, dxneg)
  labels = {labels{:}, ["E = ", num2str(E(i))]};
  %labels is creating a label for every energy, at every iteration it stores
  %a string concatened with a functions that converts a number to a string.
  %labels{:} is the cell array expansion operator and here we use it to
  %add a string every iteration to the cell array labels without losing our
  %previous data
endfor


xlabel("x")
ylabel("dx")
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
title("phase space plot")
legend( labels,'location', 'northeast' );

hold off;
