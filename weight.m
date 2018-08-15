%function for calculating the weight assigned to each term of the cost
%expression
function w = weight(deli,vdi,sgma)
w = deli .* deli + 2.* sgma .* sgma - pi.*sgma.*(sgma./2).* laguerreL(1,2,-1.*deli.*deli./(2.*sgma.*sgma)) + vdi;
end