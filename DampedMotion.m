%problem 11
A= 1;
w= 1
B= 0.1;
d= pi/2;
tmin= 0;
tmax= 16;
K= 1;
m=1;
nt=101;
t= linspace(tmin, tmax, nt);

E = m*0.5 * A^2 *((B * exp(-B .* t) .* cos(w .* t - d) - exp(-B .* t) .* w .* sin(w .* t - d)).^2) + K*0.5 * ((A * exp(-B .* t) .* cos(w .* t - d)).^2);
figure;
plot(t, E);
xlabel ("time");
ylabel ("Energy");

g= (B.*cos(w.*t-d) + w*sin(w.*t-d)).^2

dg= 2*(B.*cos(w.*t -d) + w.*sin(w.*t-d)) .* (w*B.*-sin(w.*t-d)+ (w^2).*cos(w.*t-d));

dE1 =0.5*m*(A^2)*(-2*B.*exp(-2*B.*t).*g + exp(-2*B.*t).*dg);

dE2 = 0.5*K*(A^2)*(-2*B.*exp(-2*B.*t).*((cos(w.*t-d)).^2)-2*w.*cos(w.*t-d).*sin(w.*t-d).*exp(-2*B.*t));

dE= dE1 + dE2;
figure;
plot(t, dE);

xlabel ("time");
ylabel ("Energy-loss");


