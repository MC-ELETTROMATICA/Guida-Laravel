clear input;
cla; clc; close('all')

N = 10000;
Z = ThrowingTwoDice(N)';

avg = MyMean(Z);
std = myStd(Z);
fprintf('Su un totale di %d lanci di 2d6, si ha:\n',N)
fprintf('Media = %4.2f\n',avg)
fprintf('Deviazione standard = %4.2f\n',std)
histfit(Z,11)
T = table(Z)
G1 = groupcounts(T,'Z')

hold on

input.data = G1;
input.dataFormat            = {'%.0f',2,'%.2f',1};
input.dataNanString         = '-';
input.tableCaption          = 'Tabella210';
input.tableLabel            = 'tb:ThrowingTwoDice';
input.tableColumnAlignment  = 'c';
input.tableBorders          = 1;
input.position              = 'h';
latex = latexTable(input);

fid=fopen('../data/table210.tex','w');
[nrows,ncols] = size(latex);
for row = 1:nrows
    fprintf(fid,'%s\n',latex{row,:});
end
fclose(fid);

saveas(gcf,'../../img/script210.png');
