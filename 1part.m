x=0:0.1:3;
t=0:0.1:3;
[x, t]=meshgrid(x,t);
s=0;
for n=1:5
    s = s + (40*(2*n-1)^2.*pi^2.-288)*exp(-(2*n-1)^2.*pi.^2.*t^2./6).*sin((2*n-1).*pi.*x./6)./((2*n-1)^3.*pi.^3);
end
f1=s+2/3;
mesh(x,t, f1)
hold on
s=0;
for n=1:10
     s = s + (40*(2*n-1)^2.*pi^2.-288)*exp(-(2*n-1)^2.*pi.^2.*t^2./6).*sin((2*n-1).*pi.*x./6)./((2*n-1)^3.*pi.^3);
f2=s+2/3;
mesh(x,t, f2)
s=0;
for n=1:20
      s = s + (40*(2*n-1)^2.*pi^2.-288)*exp(-(2*n-1)^2.*pi.^2.*t^2./6).*sin((2*n-1).*pi.*x./6)./((2*n-1)^3.*pi.^3);
end
f3=s+2/3
mesh(x,t, f3)
hold off
