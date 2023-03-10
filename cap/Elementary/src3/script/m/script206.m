clearvars; clc; close('all');

data = linspace(-1,1,10);

f1 = fvalue(data,1);
f2 = fvalue(data,2);
f3 = fvalue(data,3);

hold on
plot(data,f1,'LineWidth',2,'DisplayName','f1');
plot(data,f2,'LineWidth',2,'DisplayName','f2');
plot(data,f3,'LineWidth',2,'DisplayName','f3');

title('Grafico 1/x^n');
xlabel('x');
ylabel('1/x^n');
legend('show');
hold off
grid on
grid minor
ax = gca;
ax.GridLineStyle = '--';
ax.GridAlpha     = 0.5;
ax.Box           = 'on';

saveas(gcf,'../../img/script206.png');
