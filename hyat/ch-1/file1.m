%%ch-1 hyat examples

%generation of square wave

A=1;
w0=10*pi;
duty=50;
t=0:0.001:1;
sq=A*square(w0*t,duty);
plot(t,sq)

%sawtooth waveform generator
st=sawtooth(w0*t);
figure(2)
plot(t,st)

%symmetric triangular waveform generator 
width=0.5;
trn=sawtooth(w0*t,width);
figure(3)
plot(t,trn)

%discrete signal square wave
omega=pi/4;
n=-10:10;
sqd=A*square(omega*n);
figure(4)
stem(n,sqd)

%decaying exponential signal
B=5;
a=6;
dex=B*exp(-a*t);
figure(5)
plot(t,dex)

%growing exponential signal
gex=B*exp(a*t);
figure(6)
plot(t,gex)

%growing exponential discrete signal

alpha = 1;
n=-10:10;
gexd=5*exp(alpha*n)/100000;
figure(7)
stem(n,gexd)
axis([-10 10])

%cos signal generation
A=4;
w0=20*pi;
phi=pi/6;
t=0:0.001:1;
cosine=A*cos(w0*t+phi);
figure(8)
plot(t,cosine)

%sin signal continuous time
%1.31
figure(9)
sinus=A*sin(w0*t+phi);
plot(t,sinus)

%discrete time sin signal
n=-10:10;
phi=0;
A=1;
omega=2*pi/12;
sindis=A*sin(omega*n);
figure(10)
stem(n,sindis)

%damped sinusoidal signal generator
A=6;
w0=6*pi;
phi=0;
a=2;
t=0:.001:1;
sinexp = A*sin(w0*t+phi).*exp(-a*t);
figure(11);
plot(t,sinexp)

%discrete exponential sinusoidal
z=sindis.*gexd;
figure(12)
stem(n,z)

%step function
step=[zeros(1,50),0.5,ones(1,50)];
t=-1:0.02:1;
length(step)
length(t)


figure(13)
plot(t,step)

%discrete time unit impulse
delta = [zeros(1,49),1,zeros(1,49)]
n=-49:49;
length(delta)
length(n)
figure(14)
stem(n,delta)


%ramp
ramp=n;
figure(15)
stem(n,ramp)

%rectangualar pulse centred at the origin
t=-1:1/500:1;
u1 = [zeros(1,250),0.5,ones(1,750)];
u2 = [zeros(1,750),0.5,ones(1,250)];
u=u1-u2;
length(t)
length(u)
figure(16)
plot(t,u)

%problems
%1.42
A=5;
w0=20;
duty=60
t=-1:.001:1;
st = A*square(w0*t,duty);
figure(17)
plot(t,st)

%1.42(b)
A=5;
w0=20*2*pi;
t=0:0.01:.25;
y=A*sawtooth(w0*t);
figure(18)
plot(t,y)

%1.43(a)
t=0:0.01:5;
x = 10*exp(-t)-5*exp(-0.5*t);
figure(19)
plot(t,x)

%1.43(b)
t=0:.01:5;
x = 10 * exp(t) + 5 * exp(-0.5*t);
figure(20)
plot(t,x)




