%{  normalDistribuition
%
% Syntax:  normal = normalDistribuition(x,mu,sigma)
% 
% Brief: One line description 
% 
% Inputs:
%    - x     = (m,n) <type> {condition}, Description
%    - mu    = (m,n) <type> {condition}, Description
%    - sigma = (m,n) <type> {condition}, Description
% 
% Outputs:
%    - normal = (m,n) <type>, Description
% 
% See also: None
%}

% INFO
%----------------------------------------------------------%
% Version: 1.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 18-Sep-2022 18:37:54
% Implementation In Matlab R2022b
%----------------------------------------------------------%}

% HISTORY VERSION
%---------------------------------------------------------%
% 1.0.0 (09/18/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}

function normal = normalDistribuition(x, mu, sigma)
    tmp1 = sqrt( 2 * pi * sigma.^2);
    tmp2 = (x - mu).^2;
    tmp3 = 2 * sigma.^2;

    normal = (1.0/tmp1) .* exp(-tmp2 ./ tmp3);
    
end
