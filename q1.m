#signal generator for a combination of ramp and unit step functions


t=-5:0.01:5;

#ramp function generator
function y =  ramp(t,m,ad)
#ramp function generator
#t is the time support
#m is slope
#ad is advnace positive ; negative delay
N=length(t);
y=zeros(1,N);
for i = 1:N,
if t(i) >= -ad,
y(i) = m*(t(i)+ad);
endif
endfor
endfunction

#unit step function generator
function y = ustep(t,ad)
#t is the time support
#ad is advance positive; negative delay
N=length(t);
y=zeros(1,N);
for i = 1:N,
if t(i) >= -ad,
y(i) = 1;
endif
endfor
endfunction

y4=-3*ustep(t,-3);
#figure(1);
#plot(t,y2,'r');


y1=ramp(t,3,3);
#figure(2);
#plot(t,y1,'b');

y2=ramp(t,-6,1);
y3=ramp(t,3,0);
y=y1+y2+y3+y4;
plot(t,y,'b');

