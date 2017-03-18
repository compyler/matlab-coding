function y = prost(x)
y = zeros(size(x));
y(x>-0.5 & x<0.5) = 1;
y(abs(x)==0.5) = 0.5;