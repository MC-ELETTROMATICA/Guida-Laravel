%{ myGrid
%
% Syntax:  myGrid()
% 
% Brief: Imposta la griglia dei grafici. 
% 
% Inputs:
%    - None
% 
% Outputs:
%    - None
% 
% See also: None
%}

% INFO
%----------------------------------------------------------%
% Version: 1.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 15-Sep-2022 20:46:23
% Implementation In Matlab R2022a
%----------------------------------------------------------%}

% HISTORY VERSION
%---------------------------------------------------------%
% 1.0.0 (09/15/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}

function myGrid()
    grid on                  % Attiva la griglia
    grid minor               % Tipologia di griglia
    ax = gca;                % Riferimento al grafico
    ax.GridLineStyle = '--'; % Style linee divisorie griglia
    ax.GridAlpha     = 0.5;  % 
    ax.Box           = 'on'; % Attiva il box della griglia
end
