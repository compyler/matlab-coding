%%
t = linspace(-1,1,1000); % dziedzinka

f = -10:0.1:10;
y = prost(t); %% moja funkcja (impuls prostok¹tny)

for k = 1:length(f)
    z(k) = trapz(t,y.*exp(-1i*2*pi*f(k)*t));
end

plot(f,abs(z))