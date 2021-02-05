WB=0.75*2;            %distance between two tires
c=0.6;             %horizontal distance between front tire and cg
h=0.5;              %height of cg
l_sp=0.25;          %swing arm length
m=240;              %maass of bike
k=30000;            %stiffness of spring
W=m*9.81;           %weight of bike 
l_sa=0.8;           %swing arm length
%a_cc=0;            %acceleration of bike
h_sa=0.3;           %initial height of hinge of swing arm 
%[l_sa,a_cc]=meshgrid(0.4:0.05:0.6,1:0.5:3)     %generate mesh grid
a_cc = linspace(0,0.5,3);
%%
b_y=(c/WB)*W+(h/WB)*(m*a_cc)
alp1= radtodeg(asin(h_sa/l_sa))
%%
alp2=radtodeg(asin((b_y*l_sa)/(l_sp*k)-(sin(alp1)*l_sp)))
plot(a_cc,alp2)
xlabel('acceleration of bike(a_{cc})')
ylabel('{\alpha}(degree)')