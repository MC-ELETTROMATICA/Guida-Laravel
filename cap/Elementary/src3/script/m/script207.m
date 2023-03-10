clearvars; clc; close('all');

   x = linspace(-0.5, 0.5, 10);
   g = zeros(length(x), 3);

hold on
for i = 1:3
   g(:,i) = gvalue(x,i);
   plot(x, g(:,i), 'LineWidth', 2, 'DisplayName', "g"+i)
end

title('Grafico sin(x)/x^n')
xlabel('x')
ylabel('sin(x)/x^n')
legend('show')
grid on
grid minor
ax = gca;
ax.GridLineStyle = '--';
ax.GridAlpha     = 0.5;
ax.Box           = 'on';
hold off
saveas(gcf,'../../img/script207.png');
