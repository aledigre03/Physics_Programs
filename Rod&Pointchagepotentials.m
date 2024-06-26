%Exercise 54
%---------------------------------------------------------------------------'
clear all

Ke= 8.99*10^(9);
lambda= 1;
L=1;
q=1;
smin= 0.1;
smax= 1;
ns= 101;
s= linspace(smin,smax,ns);

for i= 1:ns
  V(i)=lambda*Ke*log((L+sqrt(L^(2)+4*(s(i))^(2)))/(-L+sqrt(L^(2)+4*s(i)^(2))));
endfor

for i= 1:ns
  Vc(i)= Ke*(q/s(i));
endfor

plot(s,V,s,Vc)
legend("Rod potential", "Point charge potential")
xlabel("s")
ylabel("V")



