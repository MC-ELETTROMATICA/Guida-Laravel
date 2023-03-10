%{  ThrowingTwoDice
%
% Syntax:  [sumValue,value] = ThrowingTwoDice(dimDice)
% 
% Brief: One line description 
% 
% Inputs:
%    - dimDice = (m,n) <type> {condition}, Description
% 
% Outputs:
%    - sumValue = (m,n) <type>, Description
%    - value    = (m,n) <type>, Description
% 
% See also: None
%}

% INFO
%----------------------------------------------------------%
% Version: 1.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 18-Sep-2022 18:37:59
% Implementation In Matlab R2022b
%----------------------------------------------------------%}

% HISTORY VERSION
%---------------------------------------------------------%
% 1.0.0 (09/18/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}

function [sumValue,value] = ThrowingTwoDice(dimDice) 

       value = zeros(dimDice,2);
    sumValue = zeros(1, dimDice);

    for i=1:dimDice
        value(i,1) = randi(6);
        value(i,2) = randi(6);
       sumValue(i) = value(i,1)+value(i,2);
    end
end
