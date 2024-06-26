%Exam 1 exercise 3

m=1;
labels = {};
xmin= -2;
xmax=2;
nx= 101;
x= linspace(xmin,xmax, nx)
E= [0, 0.5, 1, 2];
U= -2*x.^(2)+x.^(4)+1;


figure 1;
plot (x, U);
for i=1:4
  hold on;
  plot([x(1), x(nx)],[E(i), E(i)]);
endfor
xlabel("displacement (m)");
ylabel("potential energy (J)");
axis([-2 2 0 2]);
title("potential energy vs displacement");
legend ({"U(x)", "E = 0", "E = 0.5", "E = 1", "E = 2"}, "location", "northeast");
hold off;

figure (2)

for i=1:4
  T = E(i) - U;
  v = sqrt((2/m)*T);
  plot(x, v);
  hold on;
  plot(x, -v);
  hold on;
endfor

xlabel("displacement (m)")
ylabel("velocity (m/s)")
axis([-2 2 -2 2])
title("velocity phase space")
hold off;

