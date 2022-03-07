clear all;
clc;
syms L1 L2 s1 c1 s2 c2 t1 t2
%L1=200; L2=150;
 
I = [1 0 0; 0 1 0;0 0 1];

P=[L1+L2; 0;0];

P1=[L1;0;0];

P2=[L2;0;0];

M=[I P;0 0 0 1]

M1=[I P1;0 0 0 1];

M2=[I P2;0 0 0 1];

w1=[0;0;1]
w2=[0;0;1]

q1=[0;0;0]
%q2=[L1;0;0];
q2=[L1;0;0]

v1=cross(-w1,q1)
v2=cross(-w2,q2)



A01 = ME(w1(1),w1(2),w1(3),v1,s1,c1,t1)
A12 = A01*M1%<<<-----------Esta
A02 = ME(w2(1),w2(2),w2(3),v2,s2,c2,t2)
A22 = A12*A02*M


% 
% A01 = ME_num(w1(1),w1(2),w1(3),v1,3*pi/2)
% A12 = A01*M1
% A02 = ME_num(w2(1),w2(2),w2(3),v2,-pi/4)
% %A22 = A02*M no se usa
% A22 = A01*A02*M







%T = A01*A02*M No se usa

%-----------------Graficado-----------------------------

% x0= 0; y0=0;
% 
% x1= A01(1,4);   y1= A01(2,4);
% x2= A12(1,4);   y2= A12(2,4);
% x3= A22(1,4);   y3= A22(2,4);
% 
% X=[x1 x2 x3];   Y=[y1 y2 y3];
% 
% plot(X(1:2),Y(1:2),'r','LineWidth',3);
% hold on;
% plot(X(2:3),Y(2:3),'b','LineWidth',3);
% %hold off;
% %plot(x2,y2,'g','LineWidth',6);
% 
% grid on;
% axis([-350 350 -350 350]) 









