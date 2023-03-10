clearvars; clc; close('all');

    x = linspace(-5,5,1000);
   mu = 0;
sigma = 1;

 P = normalDistribuition(x,mu,sigma);
pl = plot(x,P);
pl.LineWidth   = 1;
pl.DisplayName = "\sigma = 1";  
xlabel('\mu=0')
ylabel('f(x)')
legend('show')

saveas(gcf,'../../img/script205b.png');
