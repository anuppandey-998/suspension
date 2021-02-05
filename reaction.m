R=0.25;
Ha=1;
WB=1.5;
l_sp=0.25;
h=1;
a_cc=3;
l_sa0=0.6;
alpha_0=0.5;

%[a_cc,l_sa]=meshgrid(0:3:30.8,0.4:0.05:0.8);
%[a_cc,alpha_0]=meshgrid(0:1:9.25,0:0.05:0.3);
%[l_sa,alpha_0]=meshgrid(0.4:0.05:0.8,0:0.1:0.3)
%[a_cc,l_sa]=meshgrid(0:1:3,0.4:0.05:0.8)
[l_sa,a_cc]=meshgrid(0.4:0.1:0.8,0:1:3)

x=0.75;
m=240;
k_2=20000;
W=m*9.81;
alpc=cos(alpha);
F_y=(W*x/WB)+((m*h/WB).*(a_cc));
cc=(((l_sp^2)*k_2).*alpc);
cons=(F_y.*(-0.1))./cc;
alpha=alpha_0+cons;

% plot(l_sa,alpha)
% xlabel('l_{sa}');
% ylabel('alpha');
% legend('alpha_0=0','alpha_0=0.1','alpha_0=0.2','alpha_0=0.3')

% plot(l_sa,alpha)
% xlabel('l_{sa}')
% ylabel('alpha')
% legend('acc=0','acc=1','acc=2','acc=3','acc=4')

plot(a_cc,alpha)
xlabel('a_cc}')
ylabel('alpha')
legend('l_sa=0.4','l_sa=0.5','l_sa=0.6','l_sa=0.7','l_sa=0.8')

% surf(a_cc,l_sa,alpha);
% xlabel('a_{cc}');
% ylabel('l_{sa}');
% zlabel('alpha')

% surf(a_cc,alpha_0,alpha);
% xlabel('a_{cc}');
% ylabel('alpha_0');
% zlabel('alpha')

% plot(a_cc,alpha);
% xlabel('a_{cc}');
% ylabel('alpha');
% legend('l_{sa}=0.4','l_{sa}=0.5','l_{sa}=0.6','l_{sa}=0.7','l_{sa}=0.8')
