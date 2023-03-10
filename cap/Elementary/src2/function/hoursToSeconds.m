%{  hoursToSeconds
%
% Syntax seconds = hoursToSeconds(hours)
% 
% Brief
%       Cancola il numero di secondi contenute in un dato
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
% Version: 2.0.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 03-Sep-2022 21:28:14
% Implementation In Matlab R2022a
%---------------------------------------------------------%}

%{ HISTORY VERSION:
% 2.0.0 (13/09/2022) 
%  + Validazione argomento
%
% 1.0.1 (04/09/2022) 
%  + Commenti
% 
% 0.1.0 (03/09/2022)
%  + Inizializzazione funzione
%---------------------------------------------------------%}
function seconds = hoursToSeconds(hours)

    arguments
        hours double {mustBeNonnegative}
    end

    seconds = 3600 * hours;

end
