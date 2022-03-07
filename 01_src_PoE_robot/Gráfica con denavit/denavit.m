% DENAVIT Matriz de transformación homogénea.
% DH = DENAVIT(TETA, D, A, ALFA) devuelve la matriz de transformacion
% homogénea 4 x 4 a partir de los parametros de Denavit-Hartenberg
% D, ALFA, A y TETA.
%
% See also DIRECTKINEMATIC.
function dh=denavit(teta, d, a, alfa)
dh=[cos(teta) -cos(alfa)*sin(teta) sin(alfa)*sin(teta) a*cos(teta);
sin(teta) cos(alfa)*cos(teta) -sin(alfa)*cos(teta) a*sin(teta);
0 sin(alfa) cos(alfa) d;
0 0 0 1];