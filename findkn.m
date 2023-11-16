function value=findkn(x)
k1=x(1);
k2=x(2);
k3=1-k1-k2;

load csenTilde.mat;
load dcsen.mat;
load dcn.mat;
load p2d_dcsen.mat;

ensemble=k1*csenTilde+k2*dcsen+k3*dcn;

value=norm(p2d_dcsen-ensemble,2);
end