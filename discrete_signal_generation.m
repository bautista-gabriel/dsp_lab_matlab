clc;
clear all;
close all;
n=-10:1:10;
L=length(n);
for i=1:L
if n(i)==0
x1(i)=1;
else
x1(i)=0;
end;
if n(i)>=0
x2(i)=1;
x3(i)=n(i);
else
x2(i)=0;
x3(i)=0;
end;
end;
% to generate exponential sequence
a=0.85;
x4=a.^n;
% to generate sinusoidal sequence
f=0.1;
x5=sin(2*pi*f*n);
figure;
subplot(3,2,1);
stem(n,x1);
xlabel('time n ---->');
ylabel('amplitude---->');
title('Unit step signal');
subplot(3,2,2);
stem(n,x2);xlabel('time n ---->');
ylabel('amplitude---->');
title('Unit impluse signal')
subplot(3,2,3);
stem(n,x3);
xlabel('time n ---->');
ylabel('amplitude---->');
title('Unit remp signal');
subplot(3,2,4);
stem(n,x4);xlabel('time n ---->');
ylabel('amplitude---->');
title('exponential signal');
subplot(3,2,[5,6]);
stem(n,x5);
xlabel('time n ---->');
ylabel('amplitude---->');
title('sinusoidal signal');