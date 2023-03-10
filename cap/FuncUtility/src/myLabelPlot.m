%{ myLabelPlot
%
% Syntax:  myLabelPlot(titlePlot, xAxe, yAxe)
% 
% Brief: One line description 
% 
% Inputs:
%    - titlePlot = (m,n) <type> {condition}, Description
%    - xAxe      = (m,n) <type> {condition}, Description
%    - yAxe      = (m,n) <type> {condition}, Description
% 
% Outputs:
%    - a = (m,n) <type>, Description
% 
% See also: None
%}

% INFO
%----------------------------------------------------------%
% Version: 1.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 16-Sep-2022 08:45:10
% Implementation In Matlab R2022a
%----------------------------------------------------------%}

% HISTORY VERSION
%---------------------------------------------------------%
% 1.0.0 (09/16/22)
%  + Inizializzazione funzione
%---------------------------------------------------------%}

function myLabelPlot(titlePlot, xAxe, yAxe)

arguments
    titlePlot (1,1) string {mustBeNonempty}
    xAxe (1,1) string = 'X'
    yAxe (1,1) string = 'Y'
end

    title(titlePlot); % Imposta il titolo
    xlabel(xAxe);     % Imposta l'etichetta dell'asse X
    ylabel(yAxe);     % Imposta l'etichetta dell'asse Y
    legend('show');   % Attiva la leggenda
end
