myClear(2);

   point = [1 1; -1 1; -1 -1; 1 -1];
 lenDati = length(point);
  degree = zeros(1,lenDati)';
radiants = zeros(1,lenDati)';
   modul = zeros(1,lenDati)';

for i = 1:lenDati
    [degree(i), radiants(i)] = pointToAngle([point(i,1), point(i,2)] );
    modul(i) = mod(radiants(i), 2*pi);
    
    fprintf('Il punto (%2d, %2d) ha l''angolo:\n', point(i,:) )
    fprintf(' %7.4f gradi\n',degree(i))
    fprintf(' %7.4f radianti\n',radiants(i))
    fprintf(' %7.4f in [0,2%c]\n\n', modul(i), 960 );
end

point = pointTwostr(point)';

T = table( point, degree, radiants, modul);
mysave('table203', T);
disp(T);

function [degree, radiant] = pointToAngle(Axes)
    
     degree = atan2d(Axes(1), Axes(2));
    radiant = (degree*pi)/180;
end
