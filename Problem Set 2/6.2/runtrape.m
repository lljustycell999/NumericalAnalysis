[t0,w0]=trapezoid([0,1],1,10);
[t1,w1]=trapezoid([0,1],1,20);
[t2,w2]=trapezoid([0,1],1,40);

hold on;
t=0:0.025:1;
y=exp(t.^3/3);
plot(t,y)
%plot(t0,w0)
%plot(t1,w1)
plot(t2,w2)
xlim([0,1])
hold off