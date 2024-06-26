%rectangular pulse between -0.5 and 0.5 using function
function g = rect(x)
g= zeros(size(x));
set1 = find(abs(x)<0.5);
g(set1) = ones(size(set1));
end


