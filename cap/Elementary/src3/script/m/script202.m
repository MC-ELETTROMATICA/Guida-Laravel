myClear(2);

radius = [0.001 1 10]';
   rho = 7500;
  mass = massSphereSteel( rho, radius);

for i = 1 : length(radius)
    fprintf('Una sfera d''acciaio');
    fprintf(' di raggio %5.2e m', radius(i));
    fprintf(' ha massa di %.2e Kg\n', mass(i));
end

T = table(radius, mass);
mysave('table202', T);
disp(T);

function mass = massSphereSteel(rho, radius)

    arguments
        rho (1,1) double {mustBePositive}
        radius double {mustBePositive} = 1
    end

    mass = rho * 4/3 * pi * radius.^3;
end
