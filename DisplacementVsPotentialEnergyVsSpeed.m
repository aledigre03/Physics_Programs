%Problem 43, chapter 2
%Alessandro Di Gregorio
clear variables
clear all
close all

m=1;
k=4;
a=6;
E= [40, 36, 18, 0, -24];
xmax=10;
xmin=0;
nx= 101;
x= linspace(xmin, xmax, nx);
figure (1);

U=(k*(x.^2)/2)-((x.^4)*k)/(4*a^2);
%the constant of integration has been arbitrarily chosen to be 0
plot(x, U);

for i=1:5
  hold on;
  plot([xmin, xmax],[E(i), E(i)]);
endfor

xlabel("Displacement");
ylabel("Potential Energy");
title("Displacement vs U");
legend ({"U(x)", "E = 40", "E = 36", "E = 18", "E = 0", "E= -24"});
hold off;

figure (2);

for i= 1:5
 v=sqrt((E(i)-U)*(2/m));

 plot(x, v)
 xlabel("Displacement");
 ylabel("Speed");
 title("Displacement vs Speed");
 legend ({"E = 40", "E = 36", "E = 18", "E = 0", "E= -24"});

 hold on;

endfor

figure (3);
U18 = @(x) (k*(x.^2)/2)-((x.^4)*k)/(4*a^2)-18;

U18g = U-18;
plot(x, U18g);
hold on;


x1= fsolve(U18, 3);
x2= fsolve(U18, 8);

plot([x1, x1], [-100,20]);
hold on;
plot([x2, x2], [-100,20]);
xlabel("Displacement");
ylabel("Potential Energy");
title("Displacement vs U");
