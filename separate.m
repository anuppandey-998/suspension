r_c=0.1;
r_p=0.05;
R=0.25;
Ha=1;
WB_1=0.75;

[alp,l_sa]=meshgrid(0:0.1:0.7,0.4:0.05:0.8)
%[l_sa,alp]=meshgrid(0.4:0.2:0.8,0.05:0.01:0.7);
alps=sin(alp);
h=(alps.*(l_sa.*r_c))./(r_c-r_p)+R;
alpc=cos(alp);
WB=WB_1+l_sa.*alpc;
H=Ha+l_sa.*alps
H_s=(WB.*h)./(((r_c*l_sa)/(r_c-r_p)));
H_ss=H_s./alpc;
antp=H_ss./H.*100
% surf(l_sa,alp,H_s)

%plot(alp,h)

% surf(l_sa,alp,antp)
% xlabel('l_{sa}');
% ylabel('alpha');
% zlabel('anti-squat percentage(%)');

% plot(alp,antp);
% xlabel('alpha');
% ylabel('anti-squat percentage(%)');
% legend('l_{sa}=0.4','l_{sa}=0.6','l_{sa}=0.8')
figure;
    plot(l_sa,antp);
    xlabel('length of swing arm(l_{sa})')
    ylabel('anti-squat percentage(%)')
    legend('alpha=0','alpha=0.1','alpha=0.2','alpha=0.3','alpha=0.4','alpha=0.5','alpha=0.6','alpha=0.7')
