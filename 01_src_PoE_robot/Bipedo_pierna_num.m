clear all;
clc;
L1 = 5;
L2 = 10;
L3 = 10;

I = [1 0 0; 0 1 0;0 0 1];

P=[0; -L1;-L3-L2];
M=[I P;0 0 0 1];

P1=[0;-L1;0];
M1=[I P1;0 0 0 1];
P2=[0;-L1;-L2];
M2=[I P2;0 0 0 1];
P3=[0;-L1;-L3-L2];
M3=[I P3;0 0 0 1];


w1=[0;1;0];
w2=[0;1;0];
w3=[1;0;0];

q1=[0;-L1;0];
q2=[0;-L1;-L2];
q3=[0;-L1;-L2-L3];

v1=cross(-w1,q1);
v2=cross(-w2,q2);
v3=cross(-w3,q3);


A01 = ME_num(w1(1),w1(2),w1(3),v1,0)
A12 = A01*M1
A02 = ME_num(w2(1),w2(2),w2(3),v2,0)
A23 = A01*A02*M2
A03 = ME_num(w3(1),w3(2),w3(3),v3,0)
T   = A01*A02*A03*M

x1 = A01(1,4); y1 = A01(2,4); z1 = A01(3,4);
x2 = A12(1,4); y2 = A12(2,4); z2 = A12(3,4);
x3 = A23(1,4); y3 = A23(2,4); z3 = A23(3,4);
x4 = T(1,4);   y4 = T(2,4);   z4 = T(3,4);

x = [x1  x2 x3 x4];
y = [y1  y2 y3 y4];
z = [z1  z2 z3 z4];


plot3(x,y,z,'-bo',...
                'LineWidth',3,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','r',...
                'MarkerSize',10);
% Se coloca una rejilla a los ejes
grid;


axis([-20 20 -20 20 -20 20]);

