%{  acceleration2
%
% Syntax:  a = acceleration2(v,x,k,C)
% 
% Brief: One line description 
% 
% Inputs:
%    - v = (m,n) <type> {condition}, Description
%    - x = (m,n) <type> {condition}, Description
%    - k = (m,n) <type> {condition}, Description
%    - C = (m,n) <type> {condition}, Description
% 
% Outputs:
%    - a = (m,n) <type>, Description
% 
% See also: None
%}

% INFO
%----------------------------------------------------------%
% Version: 1.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 18-Sep-2022 18:37:42
% Implementation In Matlab R2022b
%----------------------------------------------------------%}

% HISTORY VERSION
%---------------------------------------------------------%
% 1.0.0 (09/18/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}
function a = acceleration2(v,x,k,C)

    a = acceleration(v, -sin(x), k, C);

end
