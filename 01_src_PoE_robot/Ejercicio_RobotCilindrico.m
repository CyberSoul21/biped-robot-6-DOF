clear all;
clc;
syms L1 L2 L3 L4 s1 c1 s2 c2 s3 c3 s4 c4 t1 t2 t3 t4;
I = [1 0 0; 0 1 0;0 0 1];
P=[0; L3+L4;L1+L2];
M=[I P;0 0 0 1]

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

art1 = ME(w1(1),w1(2),w1(3),v1,s1,c1,t1)
art2 = ME(w2(1),w2(2),w2(3),v2,s2,c2,t2)
art3 = ME(w3(1),w3(2),w3(3),v3,s3,c3,t3)
art4 = ME(w4(1),w4(2),w4(3),v4,s4,c4,t4)

T = art1*art2*art3*art4*M
