x = linspace(1,-20,1000)
t = linspace(1,-50,1000)
u = linspace(-10,20,1000)
r = tiledlayout('flow');


l(r, x, t)
l(r, t, u)

function s = l(ee, dd, ff)
    ws = inputname(2)+"("+inputname(3)+")" 
    nexttile(ee);
    plot(dd, ff);
    myLabelPlot(ws, inputname(3), inputname(2))

    myGrid;

end
