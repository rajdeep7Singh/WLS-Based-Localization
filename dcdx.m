%function to calculate partial derivative of cost function wrt x
%co-ordinate of blind node location estimated at that particular iteration
function cg = dcdx(del,d,ae,b,w)
s = size(ae);
cg = 0;
for i=1:s(1)
    cg = cg -2*(del(i)-d(i))*(ae(i,1)-b(1))/(w(i)*del(i)); 
end
end