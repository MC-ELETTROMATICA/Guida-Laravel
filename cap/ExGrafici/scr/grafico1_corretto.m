clear; close('all');
x=0:0.1:10;
y=x.^2;
z=3*x;
plot(x,y,' o')
axis([-1 11 -1 50])
xlabel('x')
ylabel('y')
title('grafico')
grid on
