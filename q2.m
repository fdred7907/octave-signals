#find even and odd components of given function

t=-5:0.01:5;

function y = ramp(t,m,ad);
N=length(t);
y=zeros(1,N);
for i = 1:N,
if t(i) >= -ad,
y(i) = m*(t(i)+ad);
endif
endfor
endfunction

function y = ustep(t,ad);
N=length(t);
y=zeros(1,N);
for i = 1:N,
if t(i)>= -ad,
y(i) = 1;
endif
endfor
endfunction

y1=ramp(t,2,2.5);
y2=ramp(t,-5,0);
y3=ramp(t,3,-2);
y4=ustep(t,-4);
y=y1+y2+y3+y4;
figure(1);
plot(t,y,'b');  
axis([-5 5 -3 5]);
grid;

function [ye,yo] = oddeven(t,y)
z=fliplr(y);
ye = (y+z)/2;
yo = (y-z)/2;
endfunction;

[ye,yo] = oddeven(t,y);

figure(2);
plot(t,ye,'g');
title("Even Component");

figure(3);
plot(t,yo,'y');
title("Odd Component");

