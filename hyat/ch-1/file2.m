%hyat ch-1 problems

%1.44
t=-0.002:.0001:0.002;
a1=500;
x=20*sin(2*pi*1000*t-pi/3).*exp(-a1*t);
subplot(1,3,1)
plot(t,x)

a2=750;
x=20*sin(2*pi*1000*t-pi/3).*exp(-a2*t);
subplot(1,3,2);
plot(t,x)

a3=1000;
x=20*sin(2*pi*1000*t-pi/3).*exp(-a3*t);
subplot(1,3,3)
plot(t,x)


%1.45
%raised cosine function - continuous function
F=0.1;
w0=2*pi*F;
n=-0.1:.001:0.1;
rcos=cos(w0*n);
figure(2)
subplot(3,3 ,1);
plot(n,rcos)

%1.46 
t=-10:.1:10;
A=10;
u1=[zeros(1,100),0.5,ones(1,100)];
u2=[zeros(1,150),0.5,ones(1,50)];
u=u1-u2;
figure(2)
subplot(3,3,2);
length(u)
length(t)
plot(t,u)

%1.46 using time shifted unit steps

s1=heaviside(t);
s2=heaviside(t-5);
s=s1-s2;
figure(2);
subplot(3,3,4);
plot(t,s1)
figure(2)
subplot(3,3,5);
plot(t,s2)
figure(2)
subplot(3,3,6)
plot(t,s)
