A=1;
B=10;
C=A-B;
if C ==0 
x=200;
elseif C < 0
x=500;
else
x=100;
end

switch x
    case 500
disp('NEGATIVE')
    case 100
disp ('POSITIVE')
    case 200
disp('ZERO')
end