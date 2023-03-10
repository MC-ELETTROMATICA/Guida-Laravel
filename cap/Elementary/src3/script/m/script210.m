
N = 3;
throwDice = ThrowingTwoDice(N)'

avg = MyMean(throwDice);
std = myStd(throwDice);
fprintf('Su un totale di %d lanci di 2d6, si ha:\n',N)
fprintf('Media = %4.2f\n',avg)
fprintf('Deviazione standard = %4.2f\n',std)
histfit(throwDice,11);
tb = table(throwDice);
format("default")
t = groupcounts(tb,'throwDice')
mysave('Lancio dei dadi', t)
saveas(gcf,'../../img/script210.png');
