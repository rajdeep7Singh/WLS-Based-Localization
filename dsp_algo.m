

sgm = 3;            

b = [80,80];        %initial estimate for the position of the blind node

alpha = 0.56;        %step size for the gradient descent

sdi = (log(10)/(10*eta)).*sgmp;     %standard deviation in "d sub i" WITHOUT noise in RSSI

vard = d.*d .*(exp(2.*sdi.*sdi)-exp(sdi.*sdi));     %variance in "d sub i" WITH noise in RSSI 

[rows,temp] = size(a);      %to extract the number of anchor nodes that 
                            %have been considered which actually is the
                            %number of rows in matrix a (matrix of anchor node location)
                            
delarr=[0];                 %matrix which stores euclidean distance between
                            %anchor node and blind node estimated at each
                            %iteration

 for k=1:300                %no. of iterations is 300
   for i=1:rows
       delarr(i) = delcal(b,ae(i));
   end
   w = weight(delarr,vard,sgma);
   cx = dcdx(delarr,de,ae,b,w);
   cy = dcdy(delarr,de,ae,b,w);
   b = b-alpha.*[cx,cy];
end