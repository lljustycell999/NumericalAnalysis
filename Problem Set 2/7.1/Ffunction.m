function z=Ffunction(s)
 a=0;
 b=1;
 ya=0;
 yb=(1/3) * exp(1);
 ydot=@(t,y) [y(2);y(1) + (2/3).* exp(t)];
 [t,y]=ode45(ydot,[a,b],[ya,s]);
 z=y(end,1)-yb;
