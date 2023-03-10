myClear(3);

A = importdata('../data/trajectory.dat.txt');
t = A(:,1);
x = A(:,2);
y = A(:,3);

subplot(3,1,1)
plot(t,x);
title('x(t)'); xlabel('t'); ylabel('x');
  
subplot(3,1,2);
plot(t,y);
title('y(t)'); xlabel('t'); ylabel('y');

subplot(3,1,3);
plot(x,y);
title('y(x)'); xlabel('x'); ylabel('y');

saveas(gcf,'../../img/script211.png');
