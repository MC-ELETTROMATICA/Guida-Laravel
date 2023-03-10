clearvars; clc; close('all');

 k = 10;
 C = 5;
 n = 100; 
dt = 0.01;

x = zeros(n,1);
v = zeros(n,1);
a = zeros(n,1);
t = zeros(n,1);

x(1) = 0;
v(1) = 1;

for i = 1:n-1
      a(i) = acceleration(v(i),x(i),k,C);
    v(i+1) = v(i) + a(i)*dt;
    x(i+1) = x(i) + v(i)*dt;
    t(i+1) = t(i) + dt;
end

subplot(3,1,1)
plot(t,a); 
title('a(t)'); xlabel('t'); ylabel('a');

subplot(3,1,2)
plot(t,v); 
title('v(t)'); xlabel('t'); ylabel('v');

subplot(3,1,3)
plot(t,x);
title('x(t)'); xlabel('t'); ylabel('x');

hold off
saveas(gcf,'../../img/script209.png');
