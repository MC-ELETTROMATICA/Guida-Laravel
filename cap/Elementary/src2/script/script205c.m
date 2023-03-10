clearvars; clc; close('all');


    x = linspace(-5,5,1000);
   mu = 0;
sigma = [1 2];
hold on
for  ii = 1 : length(sigma)
     P = normalDistribuition(x, mu, sigma(ii));
    pl = plot(x, P, LineWidth=1, ...
        DisplayName = "\sigma = " + string(ii));
    myLabelPlot('Normal Distribuition (\mu=0)', 'x', 'f(x)');
    myGrid(); 
end

saveas(gcf,'../../img/script205c.png');
