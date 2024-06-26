%Problem 1.62
%I chose a rod of iron

kt= 73;
c= 448;
p= 7850;
K= kt/(c*p);
A= 2;
T0= 293;
nt= 101;
xmin = 0;
xmax= 5;
x= linspace(xmin, xmax, nt);
t1=2/K;
t2=3/K;
t3=1/K;

T1= T0 + (A/sqrt(t1))*exp(-(x.^2)/(t1*K*4));

T2= T0 + (A/sqrt(t2))*exp(-(x.^2)/(t2*K*4));

T3= T0 + (A/sqrt(t3))*exp(-(x.^2)/(t3*K*4));


plot(x, T1, 'r');
hold on;
plot(x, T2, 'g');
hold on;
plot(x, T3, 'b');
hold on;
xlabel('length'); ylabel('temperature');
