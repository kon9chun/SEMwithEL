% function Eeqn=EeqC(socn_surf)
% Eeqn=-0.16+1.32*exp(-3*socn_surf)+10*exp(-2000*socn_surf);
% end

function Eeqn=EeqC(socn_surf)
load Eeq_C.txt;
Eeqn=interp1(Eeq_C(:,1),Eeq_C(:,2),socn_surf,'linear','extrap');
end