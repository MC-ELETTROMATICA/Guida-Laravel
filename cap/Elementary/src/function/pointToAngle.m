%{  pointToAngle
%
% Syntax:  [degree, radians] = pointToAngle(Axes)
% 
% Brief: Dato un punto, o una serie di punti P,
%        restituisce l'angolo che si forma tra la retta 
%        passante per O(0,0) e il punto P(x,y), e l'asse x.
% 
% Inputs:
%    - Axes = (:, 2) double {mustBeNumeric}.
%           Matrice (:, 2) che identifica una serie di punti
%           P(x,y).
% 
% Outputs:
%    - degree = length(Axes) double.
%             Risultato del calcolo dell'angolo, 
%             uno per punto in input, in gradi.
%
%    - radians = length(Axes) double.
%              Risultato del calcolo dell'angolo, 
%              uno per punto in input, in radianti.
% 
% See also: None
%}

% INFO
%----------------------------------------------------------%
% Version: 2.0.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 13-Sep-2022 15:31:44
% Implementation In Matlab R2022b
%---------------------------------------------------------%}

% HISTORY VERSION
%----------------------------------------------------------%
% 2.0.0 (15/09/22)
%  + Impostato input come marice di 2 colonne. 
%       Ogni riga è un punto.
%
% 1.0.1 (04/09/22)
%  + Insertiti commenti
%
% 1.0.0 (03/09/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}
function [rad, deg] = pointToAngle(Axes)
         
    rad = atan2(Axes(:,2), Axes(:,1)); 
    deg = (rad * 180) / pi ; 
 
end
