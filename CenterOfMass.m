%Problem 67, part c
%---------------------------------------------------
clear all
%constants
m1= 1;
m2= 2;
tmin = 0;
tmax= pi;
%time
nt = 201;
t = linspace(tmin,tmax,nt);
%for loop
for i = 1:nt
   x1(i) = 4*cos(t(i)*2);
   y1(i) = 4*sin(t(i)*2);

   x2(i) = 2*cos((t(i)*3)-(pi/2));
   y2(i) = 2*sin((t(i)*3)-(pi/2));

   xm(i) = (m1*x1(i)+m2*x2(i)) / (m1+m2);
   ym(i) = (m1*y1(i)+m2*y2(i)) / (m1+m2);
endfor
% plot
plot(x1,y1, x2,y2, xm,ym);
legend("Mass 1", "Mass 2", "CM")
xlabel("x (m)")
ylabel("y (m)")
