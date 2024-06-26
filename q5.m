#generation of a triangle signal using ramp signals


t1=0:0.01:1;
t2=1:0.01:2;
t=0:0.01:1;
function y = ramp(t,m,ad)
N=length(t);
y=zeros(1,N);
for i = 1:N,
if t(i) >= -ad,
y(i) = m*(t(i)+ad);
endif
endfor
endfunction

y2=ramp(t1,1,0);
y3=ramp(t2,-1,0);
figure(1);
grid;
hold on;
plot(t1,y2,'b');
hold on;
plot(t2,y3+2,'b');
hold on;
t3=-4:0.01:0;
t4=2:0.01:4;
plot(t3,0,'b');
hold on;
plot(t4,0,'b');






