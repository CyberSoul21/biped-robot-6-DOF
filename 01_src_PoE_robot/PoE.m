clc
%syms s c t w1 w2 w3 q1 q2 q3 
%syms l1 l2 l3
l1=1; l2=2; l3=3;

w1=0; w2=0; w3=1; q1=0; q2=l1+l2; q3=0; 
%w1=0; w2=0; w3=1; q1=0; q2=0; q3=0; 
%syms s c t

t=2*pi;
s=sin(t);c=cos(t);
%s = sin(teta), c = cos(teta), t = teta, w = [w]
w_1 = [w1; w2; w3;]
q_1 = [q1; q2; q3;]
v = cross(-w_1,q_1)
%v = v'
s_1 = [w_1(1); w_1(2); w_1(3); v(1); v(2); v(3)]
i = [1 0 0; 0 1 0;0 0 1]
w = [0 -w3 w2; w3 0 -w1; -w2 w1 0]
%ew = e^([w]teta), es = e^([s]teta)
ew = i + s*w + (1 - c)*w^2;%Rotación
r = ew
p = (i*t + (1 - c))*w + (t - s)*w^2 %*v Posición
p = p*v
es = [ew, p;0,0,0,1]

