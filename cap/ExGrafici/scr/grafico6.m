clear
[X,Y] = meshgrid(1:0.2:10,1:0.5:20);
Z = sin(X) + cos(Y);
surf(X,Y,Z)
