myClear(2);

 hours = [1.5 12 24]';
second = hoursToSecond(hours);

for i = 1 : length(hours)    
    fprintf('In %4.1f ore ci sono %5d secondi\n', ...
        hours(i), second(i));
end
format default
T = table(hours, second);
%mysave('table201', T);
disp(T); 

function second = hoursToSecond(hours)

    arguments
        hours double {mustBePositive}
    end % arguments

    second = 3600 * hours;
    
end % function
