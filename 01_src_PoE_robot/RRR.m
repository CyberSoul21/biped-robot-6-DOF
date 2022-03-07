
L1=100; L2=100; L3=100;
I = [1 0 0; 0 1 0;0 0 1];
P=[L1+L2+L3; 0;0];
M=[I P;0 0 0 1];%Posición marco efector


t1=pi/2;
t2=pi/4;
t3=-pi/2;

w1=[0;0;1];
w2=[0;0;1];
w3=[0;0;1];
q1=[0;0;0];
q2=[L1;0;0];
q3=[L1+L2;0;0];

v1=cross(-w1,q1);
v2=cross(-w2,q2);
v3=cross(-w3,q3);



P1=[L1;0;0];
M1=[I P1;0 0 0 1];
P2=[L1+L2;0;0];
M2=[I P2;0 0 0 1];

A01 = ME_num(w1(1),w1(2),w1(3),v1,t1)
A12 = A01*M1
A02 = ME_num(w2(1),w2(2),w2(3),v2,t2)
A23 = A01*A02*M2
%A23 = A01*A02*M1*M2
A03 = ME_num(w3(1),w3(2),w3(3),v3,t3)
T = A01*A02*A03*M

x1= A01(1,4);   y1= A01(2,4);
x2= A12(1,4);   y2= A12(2,4);
x3= A23(1,4);   y3= A23(2,4);
x4= T(1,4);     y4= T(2,4);

X=[x1 x2 x3 x4];   Y=[y1 y2 y3 y4];

plot(X(1:2),Y(1:2),'-ob','LineWidth',3,'MarkerEdgeColor','r','MarkerFaceColor','g');
hold on;
plot(X(2:3),Y(2:3),'-ob','LineWidth',3,'MarkerEdgeColor','r','MarkerFaceColor','g');
hold on;
plot(X(3:4),Y(3:4),'b','LineWidth',3,'MarkerEdgeColor','r','MarkerFaceColor','g');
hold off;
%plot(x2,y2,'g','LineWidth',6);

grid on;
axis([-350 350 -350 350])



