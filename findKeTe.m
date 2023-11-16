function value=findKeTe(x)
load p2d_LMO_ccd_cn.txt;
load p2d_LMO_ccd_cp.txt;

p2d_cn=p2d_LMO_ccd_cn(:,2)-2000;
p2d_cp=p2d_LMO_ccd_cp(:,2)-2000;

J=-17.5*ones(length(p2d_cn),1);
Ke=x(1);
Te=x(2);
s=tf('s');
sys=Ke/(Te*s+1);
out=lsim(sys,J,0:length(J)-1);

value=norm(p2d_cp-out,2);
end