clearvars; clc; close('all');

    x = linspace(-3, 6, 1000);
   mu = [0 1 2];
sigma = 1;

hold on
for i = 1 : length(mu)
    P = normalDistribuition(x, mu(i), sigma);
    subplot(3,1,i); pl = plot(x,P);
    pl.LineWidth   = 1;
    pl.DisplayName = "\mu = " + mu(i);

    myLabelPlot('', 'x', 'f(x)');
    myGrid(); 
end   
titleSubPlot('Distribuizione Normale (\sigma=1)');
 
saveas(gcf,'../../img/script205d.png');
