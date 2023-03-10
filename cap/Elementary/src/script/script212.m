%% Testo esercizio
% Il file __trajectory.dat__ contiene un elenco di numeri:
%    
%  t0  x0  y0
%  t1  x1  y1
%  ... ... ...
%  tn  xn  yn
%
% corrispondente al tempo t(i) misurato in secondi 
% e alle posizioni x(i) e y(i) misurato in metri
% per la traiettoria di un proiettile.
%
%   a)  Leggere il file di dati, e popolare le matrici
%       t, x e y.
%        
%   b)  Tracciare le posizioni x e y in funzione del tempo 
%       in due grafici uno sopra l'altro.
%       
%   c)  Tracciare le posizioni (x, y) dell'oggetto in un 
%       grafico con x e y sui due assi.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc; close('all');

 A = importdata('../data/dat/velocityy.dat');
 t = A(:,1);
 v = A(:,2);
 dimT = length(t);
    y = zeros( dimT, 1 );
   dv = zeros( dimT, 1 );

subplot(3,1,1); plot(t,v);
myLabelPlot('v(t)', 't', 'v'); myGrid(); 

y(1) = 0;
for ii = 2:dimT
     tmp1 = t(ii) - t(ii-1);
    y(ii) = y(ii-1) + v(ii-1) * (tmp1);
end; clear('ii', 'tmp1');

dv(1) = 0;
for ii = 2:dimT
    tmp1 = ( y(ii) - y(ii-1) );
    tmp2 = ( t(ii) - t(ii-1) );
    dv(ii) = ( tmp1 / tmp2 ) / tmp2;
end; clear('ii', 'tmp1', 'tmp2');

subplot(3,1,2); plot(t,y);
myLabelPlot('y(t)', 't', 'y'); myGrid(); 

subplot(3,1,3); plot(t,dv);
myLabelPlot('v(t)', 't', 'dv'); myGrid();

saveas(gcf,'../../img/script212.png');
