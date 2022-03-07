function Ejercicio_RobotCilindrico_numerico(t)
clc;
%syms L1 L2 L3 L4 s1 c1 s2 c2 s3 c3 s4 c4 t1 t2 t3 t4;
L1 = 0.5;
L2 = 0.5;
L3 = 0.5;
L4 = 0.5;

I = [1 0 0; 0 1 0;0 0 1];
P=[0; L3+L4;L1+L2];
M=[I P;0 0 0 1];

P1=[0; 0;L1];
M1=[I P1;0 0 0 1];
P2=[0; 0;L1+L2];
M2=[I P2;0 0 0 1];
P3=[0; L3;L1+L2];
M3=[I P3;0 0 0 1];






w1=[0;0;1];
w2=[0;0;0];
w3=[0;0;0];
w4=[0;1;0];

q1=[0;0;0];
q2=[0;0;L1];%Prismático
q3=[0;0;L1+L2];%Prismático
q4=[0;L3;L1+L2];

v1=cross(-w1,q1);
v2=[0;0;1];
v3=[0;1;0];
v4=cross(-w4,q4);

A01 = ME_num(w1(1),w1(2),w1(3),v1,t(1))
A12 = A01*M1
A02 = ME_num(w2(1),w2(2),w2(3),v2,t(2))
A23 = A01*A02*M2
A03 = ME_num(w3(1),w3(2),w3(3),v3,t(3))
A34 = A01*A02*A03*M3
A04 = ME_num(w4(1),w4(2),w4(3),v4,t(4))
T   = A01*A02*A03*A04*M




x1 = A01(1,4); y1 = A01(2,4); z1 = A01(3,4);

x2 = A12(1,4); y2 = A12(2,4); z2 = A12(3,4);
%xi = x2; yi = y2; zi = z2+ t(2); 
x3 = A23(1,4); y3 = A23(2,4); z3 = A23(3,4);
x4 = A34(1,4); y4 = A34(2,4); z4 = A34(3,4);
x5 = T(1,4);   y5 = T(2,4);   z5 = T(3,4);
% Se dibuja el robot

%x = [x1 x2 xi x3 x4 x5];
%y = [y1 y2 yi y3 y4 y5];
%z = [z1 z2 zi z3 z4 z5];


x = [x1 x2 x3 x4 x5];
y = [y1 y2 y3 y4 y5];
z = [z1 z2 z3 z4 z5];




plot3(x,y,z,'-bo',...
                'LineWidth',3,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor',[.49 1 .63],...
                'MarkerSize',10);
% Se coloca una rejilla a los ejes
grid;
% Se establecen los límites de los ejes
axis([-1.5 1.5 -1.5 1.5 0 1.5]);




end