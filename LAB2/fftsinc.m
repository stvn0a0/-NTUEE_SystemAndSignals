%question 1(a)
n=-250:250;N=501;N1=(N-1)/2;T=20;Ts=T/N1;
x=sin(2*pi*n*Ts)./(2*pi*n*Ts);
x=x.*(n~=0);
x(251)=1;
figure;
plot(n,x);
xlabel('n');
ylabel('x');
title('x[n] vs n');
%question 1(b)
fftx=fft(x);
w=2*pi*n/N;
output=fftshift(abs(fftx));
figure;
plot(w,output);
xlabel('w');
ylabel('x');
title('magnitude of the fft output vs w');
%question 1(c)
Xk=zeros(1,501);
for num=1:N
    for ber=1:N
        Xk(num)=Xk(num)+x(ber)*exp(-1i*2*pi*(num-1)*(ber-1)/N);
    end
end
magx=fftshift(abs(Xk));
figure;
plot(w,magx);
xlabel('w');
ylabel('fftx');
title('magnitude of Xk(e^jw) vs w');
%question 2(d)
w2=(1/2)*(1+cos(4*pi*n/N1)).*(abs(n)<=N1/4)+0*(abs(n)>N1/4);
figure;
plot(n,w2);
xlabel('n');
ylabel('w');
title('w[n] vs n');
%question 2(e)
y=x.*w2;
figure;
plot(n,y);
xlabel('n');
ylabel('y');
title('y[n] vs n');
%question 2(f)
ffty=fft(y);
magy=fftshift(abs(ffty));
figure;
plot(w,magy);
xlabel('w');
ylabel('ffty');
title('magnitude of thefft output vs w');





