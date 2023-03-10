clc; clear;

data  = [0 pi/6 pi/3 -pi/2 3/2*pi];
type  = 0;
point = zeros(2,length(data));

[point(1,:),point(2,:)] = unitVector(data, type);

if type == 1
    strAngle = 'gra';
else
    strAngle = 'rad';
end

for i = 1:length(data)   
 fprintf('L''angolo di %+.2f %s ', data(i), strAngle );
 fprintf('ha coordinate (%+.2f, %5.2f)\n', ...
     point(1,i), point(2,i));
end

data  = data';
point = pointsToStr(point');

T = table( data, point)
mysave('table204', T);
