#to approximate generation of periodic pulse by adding three cosine pulses
t=sym('t');
w0=pi/10;
y1=1;
y2=2*cos(2*w0*t);
y3=-0.6*cos(4*w0*t);
y=y1+y2+y3;
ezplot(y,[-10,10]);
grid;


