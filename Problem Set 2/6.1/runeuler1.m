%use euler method on interval [0,1], with initial y value=1, and 100 steps.
[t0,w0]=euler1([0,1],1,10);
[t1,w1]=euler1([0,1],1,20);
[t2,w2]=euler1([0,1],1,40);
%compare with the exact solution. The exact solution was found by analytic
%method(s).
hold on;
t=0:0.025:1;
y=exp(t.^3/3);
plot(t,y)
%plot(t0,w0)
%plot(t1,w1)
plot(t2,w2)
xlim([0,1])
hold off