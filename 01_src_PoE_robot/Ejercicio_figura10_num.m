clear all;
clc;
%syms L1 L2 s1 c1 s2 c2 s3 c3 s4 c4 s5 c5 s6 c6 t1 t2 t3 t4 t5 t6;
L1 = 0.5;
L2 = 0.5;
E1 = 0.2;


%t = [0 0 3 0 0 0];
I = [1 0 0; 0 1 0;0 0 1];

P=[0; L1+L2;0];
M=[I P;0 0 0 1];

P1=[0; 0;0];
M1=[I P1;0 0 0 1];

P2=[0; L1;0];
M2=[I P2;0 0 0 1];

P_E=[E1; L1+L2;0];
M_E=[I P_E;0 0 0 1];





w1=[0;0;1];
w2=[1;0;0];
w3=[0;0;0];
w4=[0;1;0];
w5=[1;0;0];
w6=[0;1;0];

q4=[0;0;0];
q1=q4;
q2=q4;
q5=[0;L1;0];
q6=q5;


v1=cross(-w1,q1);
v2=cross(-w2,q2);
v3=[0;1;0];
v4=cross(-w4,q4);
v5=cross(-w5,q5);
v6=cross(-w6,q6);

A01 = ME_num(w1(1),w1(2),w1(3),v1,0)
A12 = A01*M1
A02 = ME_num(w2(1),w2(2),w2(3),v2,0)
A23 = A01*A02*M1
A03 = ME_num(w3(1),w3(2),w3(3),v3,0)
A34 = A01*A02*A03*M1
A04 = ME_num(w4(1),w4(2),w4(3),v4,0)
A45 = A01*A02*A03*A04*M1
A05 = ME_num(w5(1),w5(2),w5(3),v5,0)
A56 = A01*A02*A03*A04*A05*M2
A06 = ME_num(w6(1),w6(2),w6(3),v6,-pi/4)
T = A01*A02*A03*A04*A05*A06*M

EF= A01*A02*A03*A04*A05*A06*M_E







x1 = A01(1,4); y1 = A01(2,4); z1 = A01(3,4);
x2 = A12(1,4); y2 = A12(2,4); z2 = A12(3,4);
x3 = A23(1,4); y3 = A23(2,4); z3 = A23(3,4);
x4 = A34(1,4); y4 = A34(2,4); z4 = A34(3,4);
x5 = A45(1,4); y5 = A45(2,4); z5 = A45(3,4);
x6 = A56(1,4); y6 = A56(2,4); z6 = A56(3,4);
x7 = T(1,4);   y7 = T(2,4);   z7 = T(3,4);
x8 = EF(1,4);  y8 = EF(2,4);  z8 = EF(3,4);



% Se dibuja el robot
x = [x1  x2 x3 x4 x5 x6 x7 x8];
y = [y1  y2 y3 y4 y5 y6 y7 y8];
z = [z1  z2 z3 z4 z5 z6 z7 z8];


plot3(x,y,z,'-mo',...
                'LineWidth',1,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor',[.49 1 .63],...
                'MarkerSize',10);
% Se coloca una rejilla a los ejes
grid;


% Se establecen los límites de los ejes
axis([-1.5 1.5 -1.5 1.5 0 1.5]);




