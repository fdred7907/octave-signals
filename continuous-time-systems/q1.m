#drawing zener diode clipper plots with octave / matlab 
#problem 2.2 luis chapparo

t=0:0.001:4;
function y = zener(t,x)
N=length(t);
for i = 1:N,
if x(i) > 0.5 || x(i) < -0.5,
y(i)=0.5;
else,
y(i)=x(i);
endif
endfor
endfunction

x=cos(pi*t);
y=zener(t,x);
figure(1);
plot(t,x,'r');
grid;
hold on;
plot(t,y,'b');



x2=0.3*cos(pi*t);
y2=zener(t,x2);
figure(2);
plot(t,x2,'r');
grid;
hold on;
plot(t,y2,'b');

#clearly the system is not linear as the plot for 0.3v(s) is different from the original plot

#checking for time invariability by time shifting 
figure(3);
plot(t+2,x,'r');
grid;
hold on;
plot(t+2,y,'b');
y3=zener(t+2,x);
hold on;
plot(t+2,y3,'g');

#as the curves of y shifiting and y by inputting x shifting overlap , this function seems to be time invariant

