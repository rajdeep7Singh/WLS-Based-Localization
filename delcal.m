%1. function to calculate the new "del sub i" at each iteration
%2. at one call this function only evaluates one "dell sub i"
function ddi = delcal(b,a)
ddi = 	sqrt(sum((b - a) .^ 2));
end