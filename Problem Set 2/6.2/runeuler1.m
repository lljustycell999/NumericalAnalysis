euler1([-10,0],1/10001,10000);
hold on;
x=-10:0.001:0;
y=1./(x.^4+1);
plot(x,y)
hold off