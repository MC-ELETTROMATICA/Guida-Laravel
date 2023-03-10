%{  massSphere
%
% Syntax:  mass = massSphere(rho, radius)
% 
% Brief: Calcola, dato un rho specifico del materiale, 
%        la massa di una sfera d'acciaio, dato il raggio. 
% 
% Inputs:
%    - rho = (1,1) {mustBePositive}.
%          Scalere. In questo modo ogni conversione puo'
%          essere riferita solo ad un tipo di materiale.
%
%    - radius = {mustBePositive} = 1.
%             Matrice. Ogni singolo elemento della matrice 
%             verra' considerato come un raggio. Se non 
%             dovesse esserci si suppora' un unico raggio di 
%             pari a 1 metro. 
% 
% Outputs:
%    - mass = size(radius) 
%           Matrice contenete le masse delle sfere.
% 
% See also: None
%}

%{ INFO
%----------------------------------------------------------%
% Version: 3.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 13-Sep-2022 12:26:54
% Implementation In Matlab R2022a
%---------------------------------------------------------%}

%{ HISTORY VERSION
%---------------------------------------------------------%
% 2.0.0 (14/09/2022) 
%  + Impostato rho come argomento di input 
%
% 1.0.1 (04/09/2022) 
%  + Commenti
% 
% 0.1.0 (03/09/2022)
%  + Inizializzazione funzione
%---------------------------------------------------------%}
function mass = massSphere(rho, radius)
    
    mass = rho * 4/3 * pi * radius.^3;
    
end
