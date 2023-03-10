clearvars; clc; close('all');

    x = linspace(-5,5,1000);
   mu = 0;
sigma = 1;

 P = normalDistribuition(x,mu,sigma);
pl = plot(x,P,LineWidth=1,DisplayName="\sigma = 1");
myLabelPlot('Normal Distribuition (\mu=0)', 'x', 'f(x)');
myGrid(); 

saveas(gcf,'../../img/script205b.png');
