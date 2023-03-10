%{  unitVectorR
%
% Syntax:  [x, y] = unitVectorR(angleR)
% 
% Brief: Dato un angolo in radianti, lo converte in 
%        coordinate rispetto all'asse X. 
% 
% Inputs:
%    - angleR = double 
%             Angolo in radianti.
% Outputs:
%    - x = double.
%          Matrice che contiene le coordinate X dei punti
%          trovati
%
%    - y = double.
%          Matrice che contiene le coornate Y dei punti
%          trovati
% 
% See also: None
%}

%{ INFO
%----------------------------------------------------------%
% Version: 1.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 18-Sep-2022 18:37:33
% Implementation In Matlab R2022b
%----------------------------------------------------------%}

%{ HISTORY VERSION
%---------------------------------------------------------%
% 1.0.1 (05/09/22)
%  + Insertiti commenti
%
% 1.0.0 (05/09/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}
function [x, y] = unitVectorR(angle)

    x = cos(angle);
    y = sin(angle);

end
