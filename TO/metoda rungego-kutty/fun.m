function dx = fun(t,x)
R = 100000;
C = 1e-6;
E = sin(2*pi*10*t);
% T = 1;
% w = 0.5;
% if mod(t,T)<T*w
%     E = 1;
% else
%     E = 0;
% end

dx = -x/(R*C) + E/(R*C);