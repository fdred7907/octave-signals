#example 3.2
syms t s;
#unit step function
u=sym(heaviside(t));
U=laplace(u)
d=sym(dirac(t));
D=laplace(d)




