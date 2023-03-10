%{  logisticMap
%
% Syntax:  g = logisticMap(x,r)
% 
% Brief: One line description 
% 
% Inputs:
%    - x = (m,n) <type> {condition}, Description
%    - r = (m,n) <type> {condition}, Description
% 
% Outputs:
%    - g = (m,n) <type>, Description
% 
% See also: None
%}

% INFO
%----------------------------------------------------------%
% Version: 1.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 18-Sep-2022 18:37:49
% Implementation In Matlab R2022b
%----------------------------------------------------------%}

% HISTORY VERSION
%---------------------------------------------------------%
% 1.0.0 (09/18/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}

function g = logisticMap(x,r)
    g = r * x .* (1-x);
end