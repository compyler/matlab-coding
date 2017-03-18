function [t,x] = kutty4(fun,t,x0,f)

h = t(2)-t(1);
x = zeros(length(x0),length(t));

x(1)= x0;
for k = 1:length(t)-1
    k1 = h * fun(t(k),x(k),f);
    k2 = h * fun(t(k) + 0.5*h, x(k) + 0.5*k1,f);
    k3 = h * fun(t(k) + 0.5*h, x(k) + 0.5*k2,f);
    k4 = h * fun(t(k) + 0.5*h, x(k) + k3,f);
    x(k+1) = x(k) + 1/6*(k1 + 2*k2 + 2*k3 + k4);
end
t = t(:);
x = x';
