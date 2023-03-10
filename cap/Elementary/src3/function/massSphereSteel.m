function mass = massSphereSteel(rho, radius)
%%  massSphereSteel
%
%% Syntax:
%       mass = massSphereSteel(rho, radius)
% 
%% Brief:
%       Permette di calcolare la massa di una sfera della 
%       quale si conosce il materiale e il raggio 
% 
%% Inputs:
%    - rho = (1,1) {mustBePositive}, Scalere, in questo modo
%           ogni conversione può essere riferita solo ad un 
%           tipo di materiale.

%    - radius = {mustBePositive} = 1, Matrice. Ogni singolo
%            elemento della matrice verrà considerato come 
%            un raggio. Se non dovesse esserci si supporà un 
%            raggio di default pari a 1 metro. 
% 
%$ Outputs:
%    - mass = (radius), Matrice delle stesse dimensioni di
%    radius contenete le masse.
% 
%$ See also: 
%   None

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Version: 3.0 
%  Author: Cannavo' Grazia Cristina
%   Email: youremail@studium.unict.it
% Created: 13-Sep-2022 12:26:54
% Implementation In Matlab R2022a
%----------------------------------------------------------%
%% HISTORY VERSION:
%
% 3.0.0 (13/09/2022) 
%  + Imposto rho come argomento di input 
%
% 2.0.0 (10/09/2022) 
%  + Validazione argomento
%
% 1.0.1 (04/09/2022) 
%  + Commenti
% 
% 0.1.0 (03/09/2022)
%  + Inizializzazione funzione
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    arguments
        rho (1,1) {mustBePositive}
        radius {mustBePositive} = 1
    end

    mass = rho * 4/3 * pi * radius.^3;
end
