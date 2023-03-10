%{  radMap2Pi
%
% Syntax:  [ wrapZero2Pi] = radMap2Pi(radiant)
% 
% Brief: Dato un angolo in radianti,
%        lo mappa in un range di {0, 2pi} 
% 
% Inputs:
%    - radiant = (m,n) <type> {condition}, Description
% 
% Outputs:
%    - wrapZero2Pi = length(Axes) double.
%                  Risultato del calcolo dell'angolo, 
%                  uno per punto in input, in radianti
%                  mappato in [0, 2*pi].
% 
% See also: None
%}

% INFO
%----------------------------------------------------------%
% Version: 1.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 18-Sep-2022 12:27:32
% Implementation In Matlab R2022b
%----------------------------------------------------------%}

% HISTORY VERSION
%---------------------------------------------------------%
% 1.0.0 (09/18/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}
function map2pi = radMap2Pi(rad)
         
    map2pi = mod(rad, 2*pi);

    if ((map2pi == 0) & rad > 0)
        map2pi = 2*pi; 
    end 
    
end % function
