%Problem 24A

B= 0.2;
k= 1;
m=1;
Ac=-1;
dc=0;
Ap=1;
tmin=0;
tmax=6;
t =linspace(tmin, tmax, nt);
w0=1;
w=9;
dp=atan((2*w*B)/((w0^2)-(w^2)));

xc= Ac.*exp(-B.*t).*cos(w.*t-d);

xp=(Ap/(sqrt((((w0^2)-(w^2))^2)+4*(w^2)*(B^2)))).*cos(w.*t-dp);

x= xp+xc;

figure
plot(t, x);


figure
plot(t, xp);
hold on

plot(t, xc);
hold on

