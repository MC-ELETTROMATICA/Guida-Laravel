%{ fvalue
%
% Syntax: result = fvalue(data, exp)
% 
%  Brief: applica sui dati d'ingressso la funzione: 
%                       f(x) = 1/x^n 
% 
% Inputs:
%  - data = Matrice che contiene gli elementi a cui 
%           applicare la funzione.
%  -  exp = Scalare intero. Indica l'esponente usato nella
%           funzione, se no presente si assumerà uuale a 1
% 
% Output:
%   - result = ( size(data) ).
%             Matrice ai cui elementi e' stata applicata la
%             funzione in oggetto.
% 
% See also: None
%}

%{ INFO
%----------------------------------------------------------%
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 11-Sep-2022 17:26:31
% Version: 1.0 
% Implementation In Matlab R2022a
%---------------------------------------------------------%}

%{ HISTORY VERSION
%----------------------------------------------------------%
% 2.0.0 (13/09/2022) 
%  + Validazione argomento
%
% 1.0.1 (06/09/2022) 
%  + Commenti
% 
% 0.1.0 (06/09/2022)
%  + Inizializzazione funzione
%---------------------------------------------------------%}
function result = fvalue(data, exp)
    
    arguments
        data double {mustBeNumeric}
         exp (1,1) {mustBeInteger, mustBePositive} = 1
    end

    result = (1.0) ./ (data.^exp);
end
