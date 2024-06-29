%Question 1(a)
n=1:100; Ts=1/20;
x=cos(2*pi*(n-1)*Ts);
figure;
plot(n,x);
xlabel('n');
ylabel('x[n]');
title('x[n] vs n');
%Question 1(b)
L=3;fc=0.02;
[b,a]=butter(L,fc);
[H,w]=freqz(b,a);
figure;
subplot(3,3,1)
plot(w/pi,20*log10(abs(H)));
xlabel('w');
ylabel('magnitude');
title('magnitude vs w');
phase=unwrap(angle(H))*180/pi;
subplot(3,3,2);
plot(w/pi,phase);
xlabel('w');
ylabel('phase');
title('phase vs w');
y=filter(b,a,x);
subplot(3,3,3);
plot(n,y);
xlabel('out');
ylabel('y');
title('out vs y');
%Question 1(c)
L=5;fc=0.02;
[b,a]=butter(L,fc);
[H,w]=freqz(b,a);
subplot(3,3,4)
plot(w/pi,20*log10(abs(H)));
xlabel('w');
ylabel('magnitude');
title('magnitude vs w');
phase=unwrap(angle(H))*180/pi;
subplot(3,3,5);
plot(w/pi,phase);
xlabel('w');
ylabel('phase');
title('phase vs w');
y=filter(b,a,x);
subplot(3,3,6);
plot(n,y);
xlabel('out');
ylabel('y');
title('out vs y');
%Question 1(d)
L=3;fc=0.5;
[b,a]=butter(L,fc);
[H,w]=freqz(b,a);
subplot(3,3,7)
plot(w/pi,20*log10(abs(H)));
xlabel('w');
ylabel('magnitude');
title('magnitude vs w');
phase=unwrap(angle(H))*180/pi;
subplot(3,3,8);
plot(w/pi,phase);
xlabel('w');
ylabel('phase');
title('phase vs w');
y=filter(b,a,x);
subplot(3,3,9);
plot(n,y);
xlabel('out');
ylabel('y');
title('out vs y');