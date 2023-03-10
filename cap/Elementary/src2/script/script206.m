clearvars; clc; close('all');

 data = linspace(-1, 1, 10)';
 exp  = [1 2 3]';
res_f = zeros( length(exp), length(data) )' ;

hold on
for ii = 1:length(exp)
    res_f(:, ii) = fvalue( data, exp(ii) );
    plot(data, res_f(:,ii), LineWidth=2, ...
        DisplayName="n="+ii);
end; clear('ii') ;

hold off
myLabelPlot('Grafico 1/x^n', 'x', '1/x^n');
myGrid();

T= table(data, res_f)
saveas(gcf,'../../img/script206.png');
