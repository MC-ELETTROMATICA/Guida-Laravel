%{  unitVectorD
%
% Syntax:  [x,y] = unitVectorD(angleD)
% 
% Brief: Dato un angolo in gradi, lo converte in 
%        coordinate rispetto all'asse X. 
% 
% Inputs:
%    - angleD = (:,1) double
%             Angolo in gradi.
% 
% Outputs:
%    - x = (:,1) double.
%          Vettore che contiene le coornate X dei punti
%          trovati
%
%    - y = (:,1) double.
%          Vettore che contiene le coornate Y dei punti
%          trovati
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
% 1.0.0 (05/09/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}
function [x, y] = unitVectorD(angleD)
  
    x = cosd(angleD);
    y = sind(angleD);

end
