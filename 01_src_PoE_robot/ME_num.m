function y=ME_num(w1,w2,w3,v,t)%matriz exponencial para cada articulación

%syms t
%s = sin(teta), c = cos(teta), t = teta, w = [w]
s = sin(t);
c = cos(t);
%if(c<0.0000000001)
 %   c=0;
%end
%if(s<0.0000000001)
 %   s=0;
%end
%w = [0 -w3 w2; w3 0 -w1; -w2 w1 0];%matriz hemisimétrica
w = [0 -w3 w2; w3 0 -w1; -w2 w1 0];%matriz hemisimétrica
i = [1 0 0; 0 1 0;0 0 1];%matriz identidad

%ew = e^([w]teta), es = e^([s]teta)
ew = i + s*w + (1 - c)*(w^2);
r = ew;%Rotación
p = t*i + (1 - c)*w + (t - s)*(w^2); %*v 
p = p*v;%Posición
%p = p'
es = [r p; 0 0 0 1];

y=es;

end

