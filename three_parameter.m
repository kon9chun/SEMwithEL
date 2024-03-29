function dconcentration=three_parameter(Ds,R,J)
A=-30*Ds/R^2;
B=45/2/R^2;
C=8*R/35;
D=R/35/Ds;

three=ss(A,B,C,D);
dconcentration=lsim(three,J,0:length(J)-1);
% q=14870*4/3*pi*R^3;
% for i=1:length(J)
%     dq=-30*Ds/R/R*q+45/2/R/R*J(i);
%     q=dq+q;
%     dconcentration(i)=8*R/35*q+R/35/Ds*J(i);
% end
% dconcentration=dconcentration';
end