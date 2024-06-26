%Problem21

tmin=0;
tmax= 600;
nt=101;
t= linspace(tmin, tmax, nt);
A1=2;
A2=-1;
A3=-2;
A4=1;
A5=1;
A6=2;
A7=-1;
A8=2;
A9=3;
A10=-2;
A11=1;
A12=-2;
B=0.1;
w0= 0.04;
w=sqrt(B^2-w0^2);


x1=exp(-B.*t).*(A1.*exp(w.*t)+A2.*exp(-w.*t));

dx1=-B.*x1 + exp(-B.*t).*(A1*w.*exp(w.*t)-A2*w.*exp(-w.*t));

x2=exp(-B.*t).*(A3.*exp(w.*t)+A4.*exp(-w.*t));

dx2=-B.*x2 + exp(-B.*t).*(A3*w.*exp(w.*t)-A4*w.*exp(-w.*t));

x3=exp(-B.*t).*(A5.*exp(w.*t)+A6.*exp(-w.*t));

dx3=-B.*x3 + exp(-B.*t).*(A5*w.*exp(w.*t)-A6*w.*exp(-w.*t));

x4=exp(-B.*t).*(A7.*exp(w.*t)+A8.*exp(-w.*t));

dx4=-B.*x4 + exp(-B.*t).*(A7*w.*exp(w.*t)-A8*w.*exp(-w.*t));

x5=exp(-B.*t).*(A9.*exp(w.*t)+A10.*exp(-w.*t));

dx5=-B.*x5 + exp(-B.*t).*(A9*w.*exp(w.*t)-A10*w.*exp(-w.*t));

x6=exp(-B.*t).*(A11.*exp(w.*t)+A12.*exp(-w.*t));

dx6=-B.*x6 + exp(-B.*t).*(A11*w.*exp(w.*t)-A12*w.*exp(-w.*t));

plot(x1, dx1, 'b-');
hold on;

plot(x2, dx2, 'r-');
hold on;

plot(x3, dx3, 'g-');
hold on;

plot(x4, dx4, 'c-');
hold on;

plot(x5, dx5, 'm-');
hold on;

plot(x6, dx6, 'k-');
hold on;


xlabel('Position');
ylabel('Velocity');
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
title('Phase Space Diagram');
legend('show');


