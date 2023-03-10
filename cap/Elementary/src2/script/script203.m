clc; clear;

   point = [1 1; -1 1; -1 -1; 1 -1];
 lenDati = length(point); 

  degree = zeros(lenDati, 1);
radiants = zeros(lenDati, 1);
 wrap2pi = zeros(lenDati, 1);

for ii = 1 : lenDati
    [degree(ii),radiants(ii)] = pointToAngle(point(ii,:));
    wrap2pi(ii)=radMap2Pi(radiants(ii));
    fprintf(['Il punto (%2d,%2d)' ...
        ' ha l''angolo di: '], point(ii,:) );
     fprintf('%7.4f, ', degree(ii) ); 
     fprintf('%7.4f rad, ', radiants(ii) ); 
     fprintf('%7.4f rad in [0,2%c]\n', wrap2pi(ii), 960 );
end; clear('ii');

T = table( pointsToStr(point), degToStr(degree), ...
    radiants, wrap2pi);
mysave('table203', T);
disp(T);
