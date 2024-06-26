%octave script to check if modulated system is LTI or not

syms x(t) f k t;

T = diff(x,t)
T(x1+x2)
T(x1)
T(x2)
T(x1)+T(x2)
checkAdd = T(x1+x2) == (T(x1) + T(x2));
if isAlways(checkAdd)
  disp("Function is additive")
  add = true;
else
  disp("Function is not additive")
  add=false
end

T(k*x)
k*T(x)

checkHom = T(k*x) == k*T(x);
if isAlways(checkHom)
  disp("Funcstion is homogenous")
  homo = true;
else
  disp("Function is not homogenous")
  homo=false
end

if add && homo
  disp("Function is Linear")
else
  disp("Function is not linear")
end


%check for time invariance
syms t0
tau = t-t0
LTI=T(subs(x1,t,tau)) 
RTI=subs(T(x1),t,tau)
checkTimeInv = LTI == RTI;
if isAlways(checkTimeInv)
  disp("FUnction is time invariant")
  timinvar=true
else
  disp("Function is not time invariant")
  timinvar=false
end

if add && homo && timinvar
  disp("LTI System")
  lti=true;
else
  disp("Not Lti")
  lti=false;
end

















