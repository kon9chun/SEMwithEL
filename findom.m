function value=findom(x)
load FUDS_cycle.mat;
I=FUDS_cycle*17.5;
load ELM_V.mat;
V=EAM_V+I*x;
load p2d_LMO_V_fuds.txt;
P2D_V=p2d_LMO_V_fuds(:,2);
value=norm(P2D_V-V,2);

end