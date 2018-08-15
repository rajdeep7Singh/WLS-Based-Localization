eta = 3.567;        %assumed value of eta in log-normal shadowing path loss model

p0 = -33.44;        %assumed value of RSSI power at distance d0 = 1 meter

d0 = 1;             %assumed value of d0 is 1 meter

sgmp = 2;           %standard deviation assumed in the RSSI power
sgma = 3;           %standard deviation assumed in the anchor node position
temp = 100;         %variable for scaling the square topolgy of anchor nodes
a = [-1,-1;1,1;-1,1;1,-1];      %anchor nodes placed on vertices of a square centered at origin
a = a.* temp;
bd = [99,99];                   %assumed actual location of blind node
d = [delcal(bd,a(1,:)),delcal(bd,a(2,:)),delcal(bd,a(3,:)),delcal(bd,a(4,:))];          %distance of blind node from each of the anchor nodes
p = p0 - 10*eta.*log(d/d0);     %power of RSSI at distance d from log-normal shadowing path loss model
pe = p + [normrnd(0,sgmp),normrnd(0,sgmp),normrnd(0,sgmp),normrnd(0,sgmp)];         %RSSI power with gaussian noise incorporated
de = d0 .* exp((pe-p0)/(10*eta));       %noise incorporated d is calculated from the noise incorporated RSSI power 
ae = a + [normrnd(0,sgma),normrnd(0,sgma);normrnd(0,sgma),normrnd(0,sgma);normrnd(0,sgma),normrnd(0,sgma);normrnd(0,sgma),normrnd(0,sgma)];         %Gaussian noise incorporated into anchor node location