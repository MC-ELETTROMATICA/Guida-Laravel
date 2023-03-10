%{ Testo script 201
%----------------------------------------------------------%
% Utilizzare uno script per trovare il numero di secondi
% in 1.5, 12 e 24 ore.
%---------------------------------------------------------%}

%{ INFO
%----------------------------------------------------------%
% Version: 1.3.0 
%  Author: Cannavo' Grazia Cristina
%   Email: 665000296@studium.unict.it
% Created: 03-Sep-2022 11:33:34
% Implementation In Matlab R2022b
%---------------------------------------------------------%}

%{ HISTORY VERSION:
% 1.3.0 (13/09/2022) 
%  + Inserita la tabella di output
%    
% 1.2.0 (13/09/2022) 
%  ~ Ri-organizzato l'output
%    
% 1.0.1 (04/09/2022) 
%  + Insertiti commenti
%    
% 1.0.0 (03/09/2022)
%  + Inizializzazione script
%---------------------------------------------------------%}
clear; clc;

  hours = [1.5 12 24]';
seconds = hoursToSeconds(hours);

for ii = 1 : length(hours)    
    fprintf('In %4.1f ore ci sono %5d secondi\n', ...
        hours(ii), seconds(ii));
end; clear("ii");

T = table(hours, seconds);
mysave('table201', T, type = ["csv" "txt"]);
