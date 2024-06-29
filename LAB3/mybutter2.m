%Question 2(a)
Ts=0.001;f1=100;n=1:1000;
x=cos(2*pi*(n-1)*Ts)+2*cos(2*pi*f1*(n-1)*Ts);
figure;
subplot(3,1,1);
plot(n,x);
xlabel('n');
ylabel('x[n]');
title('x[n] vs n');
%Question 2(b)
lowpass=8; fc=0.1;
[b,a]=butter(lowpass,fc);
y=filter(b,a,x);
subplot(3,1,2);
plot(n,y);
xlabel('n');
ylabel('y[n]');
title('y[n] vs n');
%question 2(c)
l=0.1;h=0.5;lowpass=4;
[b,a]=butter(lowpass,[l,h],'bandpass');
y=filter(b,a,x);
subplot(3,1,3);
plot(n,y);
xlabel('n');
ylabel('y[n]');
title('y[n] vs n');
