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

A = importdata('../data/dat/trajectory.dat');
t = A(:,1);
x = A(:,2);
y = A(:,3);

subplot(3,1,1); plot(t, x);
myLabelPlot('x(t)', 't', 'x'); myGrid(); 

subplot(3,1,2); plot(t, y);
myLabelPlot('y(t)', 't', 'y'); myGrid(); 

subplot(3,1,3); plot(x, y);
myLabelPlot('y(x)', 'x', 'y'); myGrid(); 

saveas(gcf,'../../img/script211.png');
