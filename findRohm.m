function value=findRohm(R)
load ELM_OCV.mat;
load p2d_LMO_V.txt;

P2D_V2=p2d_LMO_V(:,2);

I=-17.5*[ones(2000,1);zeros(300,1);-ones(2000,1);zeros(3700,1)];

ELM_V=ELM_OCV+I*R;

value=RMSE(ELM_V,P2D_V2);

end