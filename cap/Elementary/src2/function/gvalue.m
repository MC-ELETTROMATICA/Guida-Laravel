%{  gvalue
%
% Syntax:  result = gvalue(data, exp)
% 
% Brief: One line description 
% 
% Inputs:
%    - data = (m,n) <type> {condition}, Description
%    - exp  = (m,n) <type> {condition}, Description
% 
% Outputs:
%    - result = (m,n) <type>, Description
% 
% See also: None
%}

% INFO
%----------------------------------------------------------%
% Version: 1.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 11-Sep-2022 18:53:33
% Implementation In Matlab R2022a
%---------------------------------------------------------%}

% HISTORY VERSION
%----------------------------------------------------------%
% 1.0.0 (09/11/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}
function result = gvalue(data, exp)

    arguments (Input)
        data (1,:) double {mustBeNumeric}
         exp (1,1)  {mustBeInteger, mustBePositive} = 1
    end

    arguments (Output)
        result (1,:) {mustBeNumeric}
    end

    %result = sin(data) ./ ( data.^exp );
    result = 'd'
    
return
