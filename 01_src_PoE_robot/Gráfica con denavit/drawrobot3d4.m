% DRAWROBOT3D4 Representación 3D de un robot.
% DRAWROBOT3D4(Q) realiza una representación 3D de un robot
% en función del vector de variables articulares Q.
%
% See also DENAVIT, DIRECTKINEMATIC4.
function drawrobot3d4(q)
% Parámetros Denavit-Hartenberg del robot
teta = [q(1) 0 0 q(4)];
d = [0.4 q(2) q(3) 0.2 ];
a = [0 -0.1 0 0 ];
alfa = [0 -pi/2 0 0 ];
% Matrices de transformación homogénea entre sistemas de coordenadas consecutivos
A01 = denavit(teta(1), d(1), a(1), alfa(1));
A12 = denavit(teta(2), d(2), a(2), alfa(2));
A23 = denavit(teta(3), d(3), a(3), alfa(3));
A34 = denavit(teta(4), d(4), a(4), alfa(4));
% Matrices de transformación del primer sistema al correspondiente
A02 = A01 * A12;
A03 = A02 * A23;
A04 = A03 * A34;

R = [A01(1,1) A01(1,2) A01(1,3);A01(2,1) A01(2,2) A01(2,3);A01(3,1) A01(3,2) A01(3,3)];
tra = trace(R);
ang = acos((tra -1)/2);

% Vector de posicion (x, y, z) de cada sistema de coordenadas
x0 = 0; y0 = 0; z0 = 0;
x1 = A01(1,4); y1 = A01(2,4); z1 = A01(3,4);
xi = x1; yi = y1; zi = z1+ d(2); 
x2 = A02(1,4); y2 = A02(2,4); z2 = A02(3,4);
x3 = A03(1,4); y3 = A03(2,4); z3 = A03(3,4);
x4 = A04(1,4); y4 = A04(2,4); z4 = A04(3,4);
% Se dibuja el robot
x = [x0 x1 xi x2 x3 x4];
y = [y0 y1 yi y2 y3 y4];
z = [z0 z1 zi z2 z3 z4];


plot3(x,y,z,'-mo',...
                'LineWidth',1,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor',[.49 1 .63],...
                'MarkerSize',10);
% Se coloca una rejilla a los ejes
grid;
% Se establecen los límites de los ejes
axis([-1.5 1.5 -1.5 1.5 0 1.5]);

end