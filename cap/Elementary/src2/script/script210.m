clearvars; clc; close('all');

N = 1000;
throwDice = ThrowingTwoDice(N)';
format default
 myAvg  = myMean(throwDice);
 mySt   = myStd(throwDice);

fprintf('Su un totale di %d lanci di 2d6, si ha:\n',N);
fprintf('Media = %4.2f\n',myAvg);
fprintf('Deviazione standard = %4.2f\n',mySt);
histfit(throwDice, 11);

tb = table(throwDice)
t = groupcounts(tb,'throwDice');
mysave('table210', t);

saveas(gcf,'../../img/script210.png');
