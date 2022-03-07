clc;
xp = -0.1;
xp2 = -0.1;
xp3 = 0.1;
xp4 = 0.1;
x0 = 0 
x1 = 0
xi = 0
x2 = 0;
x3 = 0;
x4 = 0;
x5 =0;

yp = 0;
yp2 = 0.5;
yp3=0;
yp4= 0.5;
y0 = 0;
y1 = 0;
yi = 0;
y2 = 0;
y3 = 0.5;
y4 = 0.5;
y5 = 0.5;

zp = 0;
zp2=0;
zp3=0;
zp4=0;
z0 = 0;
z1 = 0.5;
zi = 0.4;
z2 = 1;
z3 = 1;
z4 = 0.5;
z5 = 0;

x = [x0 x1 x2 x3 x4 x5]
y = [y0 y1 y2 y3 y4 y5]
z = [z0 z1 z2 z3 z4 z5]

x1 = [x0 xp]
y1 = [y0 yp]
z1 = [z0 zp]

x2 = [x5 xp2]
y2 = [y5 yp2]
z2 = [z5 zp2]

x3 = [x0 xp3]
y3 = [y0 yp3]
z3 = [z0 zp3]

x4 = [x5 xp4]
y4 = [y5 yp4]
z4 = [z5 zp4]

plot3(x4,y4,z4,'LineWidth',4); 
hold on

plot3(x3,y3,z3,'LineWidth',4); 
hold on

plot3(x2,y2,z2,'LineWidth',4); 
hold on

plot3(x1,y1,z1,'LineWidth',4); 
hold on
plot3(x,y,z,'-bo',...
                'LineWidth',4,...
                'MarkerEdgeColor','r',...
                'MarkerFaceColor','g',...
                'MarkerSize',10);
            
           
% Se coloca una rejilla a los ejes
grid;
% Se establecen los límites de los ejes
axis([-1.5 1.5 -1.5 1.5 0 1.5]);
