%{  radMap2Pi
%
% Syntax:  [ wrapZero2Pi] = radMap2Pi(radiant)
% 
% Brief: One line description 
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

function [ wrapZero2Pi] = radMap2Pi(radiant)
    
    arguments
        radiant (:,1) double {mustBeNumeric}
    end
      
     wrapZero2Pi = mod(radiant, 2 * pi);

    if ((wrapZero2Pi == 0) && radiant > 0)
        wrapZero2Pi = 2*pi; 
    end % if 
 
end % function
