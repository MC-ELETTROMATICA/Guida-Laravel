clc; clear;

dataR = [0 pi/6 pi/3 pi/2 3/2*pi ];
dataG = rad2deg(dataR);

[pointR(1,:), pointR(2,:)] = unitVectorR(dataR);
[pointG(1,:), pointG(2,:)] = unitVectorG(dataG);

for ii = 1 : length(dataR)   
 fprintf('L''angolo di %+.2d rad ', dataR(ii));
 fprintf('ha coordinate (%+.2f, %+.2f)\n', ...
     pointR(1,ii), pointR(2,ii));

 fprintf('L''angolo di %+.2d gra ', dataG(ii));
 fprintf('ha coordinate (%+.2f, %+.2f)\n\n', ...
     pointG(1,ii), pointG(2,ii));
end ; clear("ii");

point = pointsToStr(pointR');

T = table( dataR', dataG', point);
T.Properties.VariableNames =["Radianti","Gradi","Coordinate"];
T.Properties.VariableUnits =["rad","^{circle}",""];
mysave('table204', T);
T

