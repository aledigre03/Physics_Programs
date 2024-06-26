%Problem 35, chapter 2
%Alessandro Di Gregorio
clear all

g= 9.8;
V0= 600;
nt=52
theta= (1/3)*pi;
tmin=0;
tmax=150;
t= linspace(tmin, tmax, nt);
kmin=0.00005;
kmax=0.014;
nk=101;
kint= linspace(kmin, kmax, nk);
k= [0.00005, 0.005, 0.01, 0.02, 0.04, 0.08]
kmax2=0.08;
kint2= linspace(kmin, kmax2, nk);
figure(1);

for j= 1:6

  x = (V0*cos(theta)*(1-exp(-k(j)*t)))/k(j);
  y = -(g*t/k(j))+((k(j)*V0*sin(theta)+g)/k(j)^2)*(1-exp(-k(j)*t))

  plot(x, y)
  hold on;

endfor

  xlabel("Horizontal Distance");
  ylabel("Vertical Height");
  title("Figure 2-8");

hold off;

figure(2);
Rp= 31820*(1-((4*kint*V0*sin(theta))/(3*g)));

T= zeros(1, nk);
initialguess = 85;
for i=1:nk

    yt =@(t) (-g*t/(kint2(i)))+((kint2(i)*V0*sin(theta)+g)/(kint2(i)^2))*(1-exp(-kint2(i)*t));

    T(i) = fzero(yt, initialguess);
endfor

for i= 1:nk

 Rk(i)= (V0*cos(theta)/kint2(i))*(1-exp(-kint2(i)*T(i)));

endfor


  plot(kint, Rp);
  xlabel("Retarding Force Constant");
  ylabel("Range");
  title("Figure 2-9");
  hold on;
  plot(kint2, Rk)
  xlabel("Retarding Force Constant");
  ylabel("Range");
  title("Figure 2-9");

  hold off;

