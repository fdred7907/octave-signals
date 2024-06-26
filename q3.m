#use symbolic octave to plot damped sinusoidal curve and its envelope

t=sym('t');
x=exp(-t)*cos(2*pi*t);
y=exp(-t);
ezplot(x,[-2,4]);
grid;
hold on;
ezplot(y,[-2,4]);

