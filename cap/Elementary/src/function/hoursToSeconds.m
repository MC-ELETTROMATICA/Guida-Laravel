%{  hoursToSeconds
%
% Syntax: seconds = hoursToSeconds(hours)
% 
% Brief: Calcola il numero di secondi contenute in un dato
%       numero di ore.
% 
% Inputs:
%    - hours = double {mustBeNonnegative}.
%            Numero di ore da convertire.
% 
% Outputs:
%   - seconds = (hours) double.
%             Numero di secondi dati dalla conversione 
%             delle ore.
%
% See also: None
%}

%{ INFO
%----------------------------------------------------------%
% Version: 1.0.1 
%  Author: Cannavo' Grazia Cristina
%   Email: 665000296@studium.unict.it
% Created: 03-Sep-2022 11:28:14
% Implementation In Matlab R2022b
%---------------------------------------------------------%}

%{ HISTORY VERSION:
% 1.0.1 (04/09/2022) 
%  + Commenti
% 
% 0.1.0 (03/09/2022)
%  + Inizializzazione funzione
%---------------------------------------------------------%}
function seconds = hoursToSeconds(hours)

    seconds = 3600 * hours;

end
