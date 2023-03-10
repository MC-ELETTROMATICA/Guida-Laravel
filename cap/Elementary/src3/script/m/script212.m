myClear(3);

 A = importdata('../data/velocityy.dat.txt');
 t = A(:,1);
 v = A(:,2);
 n = length(t);
 y = zeros(n, 1);
dv = zeros(n,1);

subplot(3,1,1)
plot(t,v);
title('v(t)'); xlabel('t'); ylabel('v');

  y(1) = 0;
for ii = 2:n
     tmp1 = t(ii)-t(ii-1);
    y(ii) = y(ii-1) + v(ii-1)*(tmp1);
end 
clear ii;

 dv(1) = 0;
for jj = 2:n
    tmp1 = (y(jj)-y(jj-1));
    tmp2 = (t(jj)-t(jj-1));
    dv(jj) = (tmp1/tmp2)/tmp2;
end
clear tmp1 tmp2 jj;

subplot(3,1,2);
plot(t,y);
title('y(t)'); xlabel('t'); ylabel('y');

subplot(3,1,3);
plot(t,dv);
title('v(t)'); xlabel('t'); ylabel('dv');

saveas(gcf,'../../img/script212.png');
