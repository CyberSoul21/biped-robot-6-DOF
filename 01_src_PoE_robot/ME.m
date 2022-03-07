function y=ME(w1,w2,w3,v,s,c,t)%matriz exponencial para cada articulación

%syms t
%s = sin(teta), c = cos(teta), t = teta, w = [w]

w = [0 -w3 w2; w3 0 -w1; -w2 w1 0]%matriz hemisimétrica
i = [1 0 0; 0 1 0;0 0 1];%matriz identidad
s_n = [w v; 0 0 0 0]
%ew = e^([w]teta), es = e^([s]teta)
ew = i + s*w + (1 - c)*w^2;
r = ew;%Rotación
p = t*i + (1 - c)*w + (t - s)*(w^2); %*v
p = p*v; %Posición
%p = p'
es = [ew p; 0 0 0 1]

y=es;

end