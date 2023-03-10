clearvars; clc; close('all');

   n = 20;
   x = zeros(1,n);
x(1) = 0.5;
hold on;

for j=1:4
    for i = 1:n-1
        x(i+1) = logisticMap(x(i),j);
    end
    i = (1:n);
    plot(i, x, 'LineWidth', 2, 'DisplayName', "r="+j)
end
title('LogisticMap'); xlabel('n'); ylabel('x')
legend('show')
hold off
saveas(gcf,'../../img/script208.png');
