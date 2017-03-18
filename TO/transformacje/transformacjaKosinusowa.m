%%
N = 10;
m = 2*[0:N-1]+1; % wektor pomocniczy

% W - macierz przekszta³cenia
W = sqrt(2/N)*cos(pi/2/N*[0:N-1]'*m);
W(1,:) = W(1,:)/sqrt(2);


x = linspace(0,10,N);

y= sin(x).*sin(3*x)+sin(2*x).*sin(4*x); %jakas tam funkcja

c = W*y';

cc = W'*c;

max(abs(y' - cc)) %error

