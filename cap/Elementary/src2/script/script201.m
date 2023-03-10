%% Testo esercizio
% Utilizzare uno script per trovare il numero di secondi
% in 1.5, 12 e 24 ore.
myClear;
  hours = [1.5 12 24]';
seconds = hoursToSeconds(hours);

for ii = 1 : length(hours)    
    fprintf('In %4.1f ore ci sono %5d secondi\n', ...
        hours(ii), seconds(ii));
end % end for ii

T = table(hours, seconds);
mysave('table201', T);
disp(T); 
