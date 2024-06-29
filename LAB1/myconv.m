
%Question I
x1=zeros(10,1);
for n=1:5
    x1(n)=n;
end
for n=6:10
    x1(n)=10-n;
end
figure;
stem(x1);
xlabel('n');
ylabel('x1');
title('x1[n] vs n');

n = 1:6;
x2 = stepfun(n-1,0) - stepfun(n-5,0);
figure;
stem(x2);
xlabel('n');
ylabel('x2');
title('x2[n] vs n');

n=1:15;
y = conv(x1(1:10),x2(1:6));
figure;
stem(n+1,y);
xlabel('n');
ylabel('y');
title('y[n] vs n');

n=1:15;
a=zeros(15,5);
x=1;
while (x<5)
    a(x:x+9,x)=x1(1:10);
    x=x+1;
end
b=zeros(5,1);
b(1:5)=x2(1:5);
yab=a*b;
figure;
stem(n+1,yab);
xlabel('n');
ylabel('y');
title('my program');


%Question II
x11=zeros(10,1);
for n=1:3
    x11(n)=5.^n;
end
figure;
stem(x11(1:6));
xlabel('n');
ylabel('x1');
title('p2 x1[n] vs n');

x22=zeros(10,1);
for n=1:5
    x22(n)=2.^n;
end
figure;
stem(x22(1:6));
xlabel('n');
ylabel('x1');
title('p2 x2[n] vs n');

n=1:12;
yy = conv(x11(1:6),x22(1:7));
figure;
stem(n+1,yy);
xlabel('n');
ylabel('y');
title('p2 y[n] vs n');

n=1:12;
aa=zeros(12,7);
x=1;
while (x<7)
    aa(x:x+5,x)=x11(1:6);
    x=x+1;
end
bb=zeros(7,1);
bb(1:7)=x22(1:7);
yab=aa*bb;
figure;
stem(n+1,yab);
xlabel('n');
ylabel('y');
title('p2 my program');

%problem 3
h1=cos(n*pi/4).*(stepfun(n,0)-stepfun(n-9,0));
figure;
stem(h1);
xlabel('n');
ylabel('h1');
title('p3 h1');

h2 = (0.5).^n.*(stepfun(n,0)-stepfun(n-9,0));
figure;
stem(n-1,h2);
xlabel('n');
ylabel('h2');
title('p3 h2');

xxx=dirac(n)-(0.5).*dirac(n-1);
figure;
n=1:10;xxx=1:10;
axis([-1 10 -2 3])
xlabel('n');
ylabel('y');
title('P3 input')
        
    
temp=conv(xxx,h1);
yyy=conv(temp,h2);
figure();
n=1:11;yyy=1:11;
stem(n-1,yyy);
xlabel('n');
ylabel('y');
title('P3 conv')









