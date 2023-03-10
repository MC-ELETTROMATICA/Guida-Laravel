clear
x = 0:0.1:10;
y = x.^2;
z = 3*x;
w = 3*y;
subplot(3,1,1)
plot(x,y,'r -o')
axis([11 20 -1 50])
subplot(3,1,2)
plot(x,w,'g :*')
subplot(3,1,4)
plot(x,z)


