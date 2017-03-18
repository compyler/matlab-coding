%%
close
N = 16;
f = 8;
fs = 5*f;
ts = 1/fs;
t = 0:ts:ts*(N-1);

y = sin(2*pi*f*t);

z1 = fft([y zeros(1,512-N)]);
z2 = fft([y]);


% z = [z(32:64) z(1:31)]
tt = [0:(N-1)]*fs/N;
tt2 = [0:(511)]*fs/512;
figure(1)
stem(tt,abs(z2))
hold on
plot(tt2, abs(z1))