clearvars; clc; close('all');
hold on

    x = linspace(-3,6,1000);
   mu = [0 1 2];
sigma = 1;

for i = 1:length(mu)
    P = normalDistribuition(x,mu(i),sigma);
    subplot(3,1,i);
    pl = plot(x,P,...
    'LineWidth',1,'DisplayName',"\mu = "+mu(i));

    xlabel('x');
    ylabel('f(x)');
    legend('show','FontSize',11);
end   

sg = sgtitle('Distribuizione Normale');
sg.FontSize  = 20;
sg.Color     = 'red';
 
saveas(gcf,'../../img/script205d.png');