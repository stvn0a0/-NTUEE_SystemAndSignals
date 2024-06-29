
z = [0.5,0.5,-1,-1];
b0 = 0.5;
b = b0*poly(z);
a = conv([1,-0.6,0.25],[1,-0.4,0.08]);
figure();
subplot(4,2,1)
zplane(b,a);
xlabel('n');
ylabel('x');
title('(a)');


[r,p,k] = residuez(b,a);
n = 0:20;
h = zeros(1,21);
for i=1:length(r)
    h = h + r(i)*p(i).^(n).*(n>=0);
end
h = h + k.*(n == 0);
subplot(4,2,2);
stem(n,h);
title('h[n]')


[H0,w0] = freqz(b,a);
subplot(4,2,3);
plot(w0/pi,20*log10(abs(H0)));
title('|H|');
subplot(4,2,4);
phase = unwrap(angle(H0))*180/pi;
plot(w0/pi,phase);
title('∠H');



sos = zp2sos(z,p,b0);
%sos =
%    0.5000    1.0000    0.5000    1.0000   -0.4000    0.0800
%    1.0000   -1.0000    0.2500    1.0000   -0.6000    0.2500

subplot(4,2,5);
[H1,w1] = freqz(sos(1,1:3),sos(1,4:6));
plot(w1/pi,20*log10(abs(H1)));
title('|H1|');
subplot(4,2,6);
[H2,w2] = freqz(sos(2,1:3),sos(2,4:6));
plot(w2/pi,20*log10(abs(H2)));
title('|H2|');
subplot(4,2,7);
plot(w2/pi,20*log10(abs(H1.*H2)));
title('|H1*H2|');

x = 1.*(n==0);
y = filter(b,a,x);
subplot(4,2,8);
stem(n,y);
title('y[n]');



