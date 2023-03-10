%{ Testo script 203
%----------------------------------------------------------%
% Trova gli angoli $\theta$ per i punti
%    $$(1,1)\;(-1,1)\;(-1,-1)\;(1,-1)$$
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
clc; clear;

 point = [1 1; -1 1; -1 -1; 1 -1];
 lenDati = length(point); 

 [rad, deg] = pointToAngle( point );
 wrap2pi = radMap2Pi(rad);

for ii = 1 : lenDati

    fprintf('Il punto (%2d, %2d)', point(ii,:));
    fprintf(' ha l''angolo di: ' );
    fprintf('%7.4f, ', deg(ii) ); 
    fprintf('%7.4f rad, ', rad(ii) ); 
    fprintf('%7.4f rad in [0,2%c]\n', wrap2pi(ii), 960 );

end; clear('ii');

T = table( pointsToStr(point), degToStr(deg), ...
    rad, wrap2pi);
mysave('table203', T);