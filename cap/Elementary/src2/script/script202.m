%% Testo esercizio
% Utilizzare uno script, che utilizzi massSphere per trovare
% la massa di determinate sfere d'acciaio 
% ($\rho=7500\frac{Kg}{m^3}$) 
% di raggio $1mm$, $1m$ e $10m$.
%
clear; clc;

radius = [0.001 1 10]';
   rho = 7500;
  mass = massSphere( rho, radius);

for ii = 1 : length(radius)
    fprintf('Una sfera d''acciaio');
    fprintf(' di raggio %5.2e m', radius(ii));
    fprintf(' ha massa di %.2e Kg\n', mass(ii));
end


T = table(radius, mass);
mysave('table202', 'T', type = ["csv" "txt"]);
%disp(T);

radius = (1:0.1:1000)';
  mass = massSphere( rho, radius);

%plot(radius,mass,'-+',LineWidth=2)
