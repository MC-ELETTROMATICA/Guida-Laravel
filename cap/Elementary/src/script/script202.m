%{ Testo esercizio
%----------------------------------------------------------%
% Utilizzare uno script, che utilizzi la funzione 
% \verb|massSphere|, per trovare la massa di determinate
% sfere d'acciaio ($\rho=7500\frac{Kg}{m^3}$) 
% di raggio $1mm$, $1m$ e $10m$.
%---------------------------------------------------------%}

%{ INFO
%----------------------------------------------------------%
% Version: 1.3.0 
%  Author: Cannavo' Grazia Cristina
%   Email: 665000296@studium.unict.it
% Created: 03-Sep-2022 11:33:34
% Implementation In Matlab R2022b
%---------------------------------------------------------%}

%{ HISTORY VERSION:
% 1.3.0 (13/09/2022) 
%  + Inserita la tabella di output
%    
% 1.2.0 (13/09/2022) 
%  ~ Ri-organizzato l'output
%    
% 1.0.1 (04/09/2022) 
%  + Insertiti commenti
%    
% 1.0.0 (03/09/2022)
%  + Inizializzazione script
%---------------------------------------------------------%}
clear; clc;

radius = [0.001 1 10]';
rho = 7500;
mass = massSphere( rho, radius);

for ii = 1 : length(radius)
    fprintf('Una sfera d''acciaio');
    fprintf(' di raggio %5.2e m', radius(ii));
    fprintf(' ha massa di %.2e Kg\n', mass(ii));
end; clear('ii');

T = table(radius, mass);
mysave('table202', T, type = ["csv" "txt"]);
