function value=findkp(x)
k1=x(1);
k2=x(2);
k3=1-k1-k2;

load csepTilde.mat;
load dcsep.mat;
load dcp.mat;
load p2d_dcsep.mat;

ensemble=k1*csepTilde+k2*dcsep+k3*dcp;

value=norm(p2d_dcsep-ensemble,2);
end