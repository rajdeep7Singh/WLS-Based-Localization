%function to calculate partial derivative of cost function wrt y
%co-ordinate of blind node location estimated at that particular iteration
function cg = dcdy(del,d,ae,b,w)
s = size(ae);
cg = 0;
for i=1:s(1)
    cg = cg -2*(del(i)-d(i))*(ae(i,2)-b(2))/(w(i)*del(i)); 
end
end