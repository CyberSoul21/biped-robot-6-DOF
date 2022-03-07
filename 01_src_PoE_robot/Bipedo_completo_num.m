clear all;
clc;
L1 = 10;
L2 = 10;
L3 = 5;
L4 = 10;
L5 = 10;

I = [1 0 0; 0 1 0;0 0 1];

P=[0; L3; 0];
M=[I P;0 0 0 1];

P1=[0;0;L1];
M1=[I P1;0 0 0 1];
P2=[0;0;L1+L2];
M2=[I P2;0 0 0 1];
P3=[0;L3;L4+L5];
M3=[I P3;0 0 0 1];
P4=[0;L3;L5];
M4=[I P4;0 0 0 1];
P5=[0;L3;0];
M5=[I P5;0 0 0 1];

w1=[1;0;0];
w2=[0;1;0];
w3=[0;1;0];
w4=[0;1;0];
w5=[0;1;0];
w6=[1;0;0];

q1=[0;0;0];
q2=[0;0;L1];
q3=[0;0;L1+L2];
q4=[0;L3;L1+L2];
q5=[0;L3;L5];
q6=[0;L3;0];

v1=cross(-w1,q1);
v2=cross(-w2,q2);
v3=cross(-w3,q3);
v4=cross(-w4,q4);
v5=cross(-w5,q5);
v6=cross(-w6,q6);


A01 = ME_num(w1(1),w1(2),w1(3),v1,pi/18)
A12 = A01*M1
A02 = ME_num(w2(1),w2(2),w2(3),v2,0)
A23 = A01*A02*M2
A03 = ME_num(w3(1),w3(2),w3(3),v3,0)
A34 = A01*A02*A03*M3
A04 = ME_num(w4(1),w4(2),w4(3),v4,pi/12)
A45 = A01*A02*A03*A04*M4
A05 = ME_num(w5(1),w5(2),w5(3),v5,-pi/8)
A56 = A01*A02*A03*A04*A05*M5
A06 = ME_num(w6(1),w6(2),w6(3),v6,0)
T = A01*A02*A03*A04*A05*A06*M





x1 = A01(1,4); y1 = A01(2,4); z1 = A01(3,4);
x2 = A12(1,4); y2 = A12(2,4); z2 = A12(3,4);
x3 = A23(1,4); y3 = A23(2,4); z3 = A23(3,4);
x4 = A34(1,4); y4 = A34(2,4); z4 = A34(3,4);
x5 = A45(1,4); y5 = A45(2,4); z5 = A45(3,4);
x6 = A56(1,4); y6 = A56(2,4); z6 = A56(3,4);
x7 = T(1,4);   y7 = T(2,4);   z7 = T(3,4);


x = [x1  x2 x3 x4 x5 x6 x7];
y = [y1  y2 y3 y4 y5 y6 y7];
z = [z1  z2 z3 z4 z5 z6 z7];


plot3(x,y,z,'--bo',...
                'LineWidth',6,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','r',...
                'MarkerSize',10);
% Se coloca una rejilla a los ejes
grid;


axis([-25 25 -25 25 0 25]);