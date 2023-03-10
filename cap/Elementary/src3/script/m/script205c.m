clearvars; clc; close('all');
hold on

    x = linspace(-5,5,1000);
   mu = 0;
sigma = [1 2];

for  i = 1:length(sigma)
     P = normalDistribuition(x,mu,sigma(i));
    pl = plot(x,P);
    pl.LineWidth   = 1;
    pl.DisplayName = "\sigma = "+sigma(i);  
    xlabel('\mu=0')
    ylabel('f(x)')
end
legend('show')
saveas(gcf,'../../img/script205c.png');
