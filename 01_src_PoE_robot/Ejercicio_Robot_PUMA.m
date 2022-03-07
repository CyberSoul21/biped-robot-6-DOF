clear all;
clc;
syms L1 L2 L3 L4 s1 c1 s2 c2 s3 c3 s4 c4 s5 c5 s6 c6 t1 t2 t3 t4 t5 t6;
I = [1 0 0; 0 1 0;0 0 1];
P = [0;L2+L3+L4;L1];
M = [I P;0 0 0 1]

w1 = [0;0;1];
w2 = [1;0;0];
w3 = [1;0;0];
w4 = [0;1;0];
w5 = [1;0;0];
w6 = [0;1;0];

q1 = [0;0;0];
q2 = [0;0;L1];
q3 = [0;L2;L1];
q4 = [0;L2+L3;L1];
q5 = [0;L2+L3;L1];
q6 = [0;L2+L3;L1];

v1=cross(-w1,q1);
v2=cross(-w2,q2);
v3=cross(-w3,q3);
v4=cross(-w4,q4);
v5=cross(-w5,q5);
v6=cross(-w6,q6);

A01 = ME(w1(1),w1(2),w1(3),v1,s1,c1,t1)
A02 = ME(w2(1),w2(2),w2(3),v2,s2,c2,t2)
A03 = ME(w3(1),w3(2),w3(3),v3,s3,c3,t3)
A04 = ME(w4(1),w4(2),w4(3),v4,s4,c4,t4)
A05 = ME(w5(1),w5(2),w5(3),v5,s5,c5,t5)
A06 = ME(w6(1),w6(2),w6(3),v6,s6,c6,t6)

T = A01*A02*A03*A04*A05*A06*M