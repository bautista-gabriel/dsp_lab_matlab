t=-10:0.01:10;
L=length(t);
for i=1:L
%to generate unit Step and ramp function
if t(i)<0
x1(i)=0;
x2(i)=0;
else
x1(i)=1;
x2(i)=t(i);
end;
end;
%to generate sinusoidal function
f=0.1;
x3=sin(2*pi*f*t);
%to generate Triangular and Sawtooth waveforms
x4=sawtooth(t,0.5);
x5=sawtooth(t);
%to generate sinc function
x6=sinc(t);
figure;
subplot(2,3,1);
plot(t,x1);
xlabel('t--->');ylabel('amp--->');
title('unit step');
subplot(2,3,2);
plot(t,x2);
xlabel('t--->');ylabel('amp--->');
title('unit ramp');
subplot(2,3,3);
plot(t,x3);
xlabel('t--->');ylabel('amp--->');
title('sinusoidal');
subplot(2,3,4);
plot(t,x4);
xlabel('t--->');ylabel('amp--->');
title('triangular');
subplot(2,3,5);
plot(t,x5);
xlabel('t--->');ylabel('amp--->');
title('sawtooth');
subplot(2,3,6);
plot(t,x6);
xlabel('t--->');ylabel('amp--->');
title('sinc function');