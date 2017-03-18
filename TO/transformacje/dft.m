function [y] = dft(x)
N = length(x);

w = exp(-i*2*pi*[0:N-1]'*[0:N-1]/N);

y = w*x(:);