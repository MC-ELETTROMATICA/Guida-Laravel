%{  unitVector
%
% Syntax:  [x,y] = unitVector(angle, type)
% 
% Brief: One line description 
% 
% Inputs:
%    - angle = (m,n) <type> {condition}, Description
%    - type  = (m,n) <type> {condition}, Description
% 
% Outputs:
%    - x = (m,n) <type>, Description
%    - y = (m,n) <type>, Description
% 
% See also: None
%}

% INFO
%----------------------------------------------------------%
% Version: 1.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 18-Sep-2022 18:37:33
% Implementation In Matlab R2022b
%----------------------------------------------------------%}

% HISTORY VERSION
%---------------------------------------------------------%
% 1.0.0 (09/18/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}

function [x,y] = unitVector(angle, type)

    if type == 1
        angle = deg2rand(angle);
    end

    x = cos(angle);
    y = sin(angle);
end
