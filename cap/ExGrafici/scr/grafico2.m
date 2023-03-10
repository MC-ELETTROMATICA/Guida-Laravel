clear
x = linspace(0,pi);
y1 = cos(x);
y2 = cos(2*x);
plot(x,y1,x,y2)
hold on
y3 = cos(3*x);
y4 = cos(4*x);
plot(x,y3,x,y4)
hold off
legend({'cos(x)','cos(2x)','cos(3x)','cos(4x)'},'Location','northwestoutside','NumColumns',2)