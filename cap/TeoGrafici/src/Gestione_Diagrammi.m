%% *Gestione Grafici1*

% Pulizia memoria diagrammi
myClear(2)
 
% Simuliamo dei dati
x1 = rand(1,100);
 
% Tipologia di diagramma
diag1 = histogram(x1);

% Modifica degli attributi. Questi attributi sono da 
% impostare SUCCESSIVAMENTE alla creazione del diagramma 
t = title('Titolo');
s = subtitle('Sottotitolo');
xlabel('Label asse X');
ylabel('Label asse Y');

% Alcuni attributi è possibili modificarli direttamente
% tramite la variabile col riferimento al grafico
diag1.FaceColor = "m"; % Colore barre
diag1.EdgeColor = "r"; % Colore bordo barre
 
% Alcuni attributi è possibili modificarli direttamente
% tramite la variabile col riferimento al titolo
t.FontSize  = 16;
t.FontAngle = 'italic';
t.Color     = 'g'; % Colore bordo barre

% Alcuni attributi è possibili modificarli direttamente
% tramite la variabile col riferimento al sottotitolo
s.FontSize  = 10;
s.FontAngle = 'italic';
s.Color     = 'blue'; % Colore bordo barre

% Salva il diagramma in un formato utilizzabile con LateX
saveas(gcf,'Esempio_Istogramma.png');
